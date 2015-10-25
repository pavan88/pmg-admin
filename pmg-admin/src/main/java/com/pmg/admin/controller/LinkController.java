package com.pmg.admin.controller;

import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pmg.admin.common.UtilFunction;
import com.pmg.admin.model.Feedback;
import com.pmg.admin.model.Link;
import com.pmg.admin.model.User;
import com.pmg.admin.model.UserLink;
import com.pmg.admin.service.FeedbackService;
import com.pmg.admin.service.LinkService;
import com.pmg.admin.service.ProofService;
import com.pmg.admin.service.UserLinkService;
import com.pmg.admin.service.UserService;

@Controller
@RequestMapping("admin")
public class LinkController {
	static Logger logger = Logger.getLogger(LinkController.class);

	@Autowired
	private LinkService linkService;
	@Autowired
	private UserLinkService userLinkService;
	@Autowired
	private ProofService proofService;
	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private UserService userService;

	public void setLinkService(LinkService linkService) {
		this.linkService = linkService;
	}

	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}

	public void setProofService(ProofService proofService) {
		this.proofService = proofService;
	}

	public void setUserLinkService(UserLinkService userLinkService) {
		this.userLinkService = userLinkService;
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/a-lb", method = RequestMethod.GET)
	public String showlinkbroadcaster(Model model, HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (null == user) {
			logger.debug("In-Valid User!!!!");
			return "login";
		}

		// LID Already generated send the values LID, AD-URL to SAME PAGE (JSP)
		// to display
		List<Link> linkLists = linkService.getLinksPostedByUser(user.getId());
		// Add null or empty checks
		// How if we remove the line of code 85
		model.addAttribute("linkLists", linkLists);
		model.addAttribute("user", user);

		/*
		 * for (Link link : linkLists) { model.addAttribute("lid",
		 * link.getLid()); model.addAttribute("url", link.getUrl()); }
		 * 
		 * model.addAttribute("user", user); Link link =
		 * linkService.findByUserId(user.getId()); model.addAttribute("link",
		 * link);
		 */

		return "a-lb";
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/a-lb", method = RequestMethod.POST)
	public String createNewLink(
			@RequestParam("generateLID") String generateLID,
			HttpSession session, Model model, HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(session);
		// Works with only one link broadcast
		String urls = request.getParameter("urls");

		if (null == user) {
			// Send User to same Page showing user is not logged in
			return "login";
		}

		// generateLID --->true then generate the LID now.
		if (generateLID.equalsIgnoreCase("true")) {

			/*
			 * List<Link> linkLists = linkService.getLinksPostedByUser(user
			 * .getId()); for (Link link : linkLists) {
			 * model.addAttribute("lid", link.getLid());
			 * model.addAttribute("url", link.getUrl()); }
			 */

			StringTokenizer strtkn = new StringTokenizer(urls, "\r\n");
			while (strtkn.hasMoreElements()) {
				String url = strtkn.nextToken();
				Link link = new Link();
				link.setUrl(url);

				// Submit the link for Broadcast
				linkService.submitLink(link, user);
			}

		}

		if (generateLID.equalsIgnoreCase("false")) {
			// Logic to broadcast the link
			System.out.println("Start Broadcasting");
			System.out
					.println("*****Selecting the user to send the link**************");
			User selecteduser = userService.getRandomUser();
			String randomuserSelected = selecteduser.getId();
			while (user.getId().equalsIgnoreCase(randomuserSelected)) {
				System.out.println("Generating the Random User......");
				selecteduser = userService.getRandomUser();
				randomuserSelected = selecteduser.getId();
			}

			if (!user.getId().equalsIgnoreCase(randomuserSelected)) {
				Link link = linkService.findByUserId(user.getId());
				userLinkService.linkPosted(randomuserSelected, link.getId(),
						user.getId());
				System.out.println("LInk Broad Casted to User Email::"
						+ selecteduser.getEmail());

			} else {
				System.out.println("Broadcaster and reciever are same........");

				return "a-dashboard";
			}

			return "a-dashboard";
		}
		return "redirect:/a-lb";
		// return "dashboard";
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping("/deletelink")
	public void deleteLink() {
	}

	
	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/a-lv", method = RequestMethod.GET)
	public String showLinkVerifierPage(HttpServletRequest request,
			HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}

		UserLink userlink = userLinkService.findByBroadcasterId(user.getId());
		String linkId = userlink.getLinkId();
		Link link = linkService.findById(linkId);
		model.addAttribute("link", link);

		/*
		 * User posteduser = userService.findById(link.getUserId());
		 * model.addAttribute("posteduser", posteduser);
		 */
		return "linkverifier";
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/a-lv", method = RequestMethod.POST)
	@ResponseBody
	public String showLinkVerifier(HttpServletRequest request,
			HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null) {
			session.invalidate();
		}
		int i = 0;
		while (request.getParameter("linkId" + i) != null) {
			UserLink userlink = userLinkService.findByLinkId(request
					.getParameter("linkId" + i));
			if (userlink != null) {
				int rating = Integer.parseInt(request
						.getParameter("rating" + i));
				if (rating == -99) {
					// proofService.delete(userlink.getProofId());
					userlink.setVerified(false);
				} else {
					userlink.setVerified(true);
					Feedback fb = new Feedback();
					fb.setUserId(userlink.getUserId());
					fb.setRating(rating);
					feedbackService.create(fb);
				}
				userLinkService.update(userlink);
				i++;
			}
		}
		return "a-dashboard";
	}

	
	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping("/luv")
	public String getLinkUniqueness(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		return "luv";
	}
	
	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping("/a-complaints")
	public String complaints(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
	
		return "a-complaints";
	}
	

	@RequestMapping(value = "/editmylinks", method = RequestMethod.POST)
	@ResponseBody
	public String showEditFaq(HttpServletRequest request) {
		User user = UtilFunction.getCurrentUser(request.getSession());
		if (user == null) {
			request.getSession().invalidate();
		}
		int i = 0;
		while (request.getParameter("linkid" + i) != null) {
			Link link = linkService
					.findById(request.getParameter("linkid" + i));
			if (link != null) {
				if (request.getParameter("checklink" + i).equalsIgnoreCase(
						"true")) {
					link.setActive(true);
				} else
					link.setActive(false);
				linkService.update(link);
			}
			i++;
		}
		return "success";
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping("/contributors")
	public String contributors(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		if (user == null)
			session.invalidate();
		model.addAttribute("user", user);
		return "contributors";
	}

}

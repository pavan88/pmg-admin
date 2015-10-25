package com.pmg.admin.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

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

import com.myt.pmg.chat.XmppManager;
import com.myt.pmg.dto.ContributorData;
import com.pmg.admin.common.UtilFunction;
import com.pmg.admin.model.FAQ;
import com.pmg.admin.model.Ip;
import com.pmg.admin.model.User;
import com.pmg.admin.service.FaqService;
import com.pmg.admin.service.IpService;
import com.pmg.admin.service.UserService;

@Controller
@RequestMapping("admin")
public class HomeController {
	static final Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	private UserService userService;
	
	@Autowired
	public IpService ipService;

	private XmppManager xmppManager;

	private static String SESSION_OBJ = "SessionObj";

	private FaqService faqService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setIpService(IpService ipService) {
		this.ipService = ipService;
	}

	public void setFaqService(FaqService faqService) {
		this.faqService = faqService;
	}

	public void setXmppManager(XmppManager xmppManager) {
		this.xmppManager = xmppManager;
	}

	@PreAuthorize(value = "hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/a-dashboard", method = RequestMethod.GET)
	public String home(Model model, Principal principal,
			HttpServletRequest request, HttpSession session) {
		User user = userService.findByUsername(principal.getName());
		if (session.getAttribute(SESSION_OBJ) == null) {
			UtilFunction.setCurrentUser(session, user);
			String ipAddress = request.getHeader("X-FORWARDED-FOR");
			if (ipAddress == null) {
				ipAddress = request.getRemoteAddr();
			}
			Ip ip1 = ipService.findByIp(ipAddress, user.getId());
			if (ip1 == null) {
				Ip ip = new Ip();
				ip.setAccessTime(new Date());
				ip.setIp(ipAddress);
				ip.setUserid(user.getId());
				ipService.saveIp(ip);
			} else {
				ip1.setAccessTime(new Date());
				ipService.updateIp(ip1);
				if (ip1.isBanned()) {
					session.invalidate();
					return "redirect:/login?error=true&ipban=true";
				}
			}
		}
		model.addAttribute("user", user);
		logger.info("Logon" + user);
		return "a-dashboard";
	}

	@RequestMapping(value = "/topusers", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<User> getTopUsers() {
		return userService.getTopUsers(5);
	}

	@RequestMapping(value = "/topcontributors", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<ContributorData> getTopContributors(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		return userService.getTopContributors(user.getId(), 5);
	}

	@RequestMapping(value = "/allcontributors", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<ContributorData> getAllContributors(HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		return userService.getTopContributors(user.getId(), -1);
	}

	@RequestMapping(value = "/faqs", method = RequestMethod.GET)
	public String getFaq(HttpSession session, Model model) {
		User user = UtilFunction.getCurrentUser(session);
		model.addAttribute("user", user);
		List<FAQ> faqList = faqService.getActiveFaqs();
		model.addAttribute("faqList", faqList);
		return "faqs";
	}

	@RequestMapping(value = "/saveip", method = RequestMethod.POST)
	public void saveLastAccessIp(@RequestParam("ip") String accessip,
			HttpSession session) {
		User user = UtilFunction.getCurrentUser(session);
		Ip ip = new Ip();
		ip.setIp(accessip);
		ip.setUserid(user.getId());
		ip.setAccessTime(new Date());
		ipService.saveIp(ip);
	}
}

package com.pmg.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmg.admin.dao.FeedbackDao;
import com.pmg.admin.model.Feedback;

@Service
public class FeedbackService {
	@Autowired
	private FeedbackDao feedbackDao;

	public void setFeedbackDao(FeedbackDao feedbackDao) {
		this.feedbackDao = feedbackDao;
	}

	public long getRatingForUser(String userid) {
		long rating = 0;
		List<Feedback> ratingList = findAllForUser(userid);
		for (Feedback feedback : ratingList) {
			rating += feedback.getRating();
		}
		return rating;
	}

	public void create(Feedback feedback) {
		feedbackDao.create(feedback);
	}

	public List<Feedback> findAllForUser(String userid) {
		return feedbackDao.findAllForUser(userid);
	}
}

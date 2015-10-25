package com.pmg.admin.service;

import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmg.admin.dao.QuestionnaireDao;
import com.pmg.admin.model.Questionnaire;

@Service
public class QuestionnaireService {
	
	@Autowired
	private QuestionnaireDao questionnaireDao;

	public void setQuestionnaireDao(QuestionnaireDao questionnaireDao) {
		this.questionnaireDao = questionnaireDao;
	}

	public List<Questionnaire> getQueList() {
		return questionnaireDao.getAllQuestions();
	}

	public String getAnswerForId(String id) {
		return questionnaireDao.findAnswerForId(id);
	}
}

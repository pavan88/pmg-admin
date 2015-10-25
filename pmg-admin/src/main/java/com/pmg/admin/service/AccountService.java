package com.pmg.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pmg.admin.dao.AccountDao;
import com.pmg.admin.model.Account;

@Service
public class AccountService {

	@Autowired
	private AccountDao accountDao;

	public Account findOne(String userId) {

		return accountDao.findOne(userId);
	}

	public Account findById(String userId) {

		return accountDao.findById(userId);
	}

	public void saveAccount(Account account) {
		accountDao.updateUser(account);
	}

	public String addAccount(Account account) {
		return accountDao.add(account);
	}
	
	public Account findByUserEmail(String userEmail){
		return accountDao.findByUserEmail(userEmail);
	}
}

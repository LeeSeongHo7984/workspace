package com.varxyz.banking.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AccountServiceImpl implements AccountService {
	private List<Account> accountList = new ArrayList<Account>();
	private CustomerService customerService;
	
	public AccountServiceImpl() {
		customerService = new CustomerServiceImpl();
	}
	
	@Override
	public Account createSavingsAccount(String accountNum, double balance, double interestRate) {
		return new SavingsAccount(accountNum, balance, interestRate);
	}
	
	@Override
	public Account createCheckingAccount(String accountNum, double balance, double overdraftAmount) {
		return new CheckingAccount(accountNum, balance, overdraftAmount);
	}
	
	@Override
	public void addAccount(Account account) {
		accountList.add(account);
	}
	
	@Override
	public void addAccount(Account account, String ssn) {
		Customer customer = customerService.getCustomerByssn(ssn);
		account.setCustomer(customer);
	}
	
	@Override
	public List<Account> getAccountBySsn(String ssn) {
		return null;
	}
	
	@Override
	public Account getAccountByAccountNum(String accounNum) {
		return null;
	}
}

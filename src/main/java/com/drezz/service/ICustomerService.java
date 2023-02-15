package com.drezz.service;

import java.util.List;

import com.drezz.model.Customer;

public interface ICustomerService {
	public Customer saveCustomer(Customer customer);
	public List<Customer> getAll();
	public void deleteRecord(Customer customer);
	public Customer updateRecord(Customer customer);
	Customer getOneCustomer(Long id);
	Customer getOneCustomer(Integer id);
}

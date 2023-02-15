package com.drezz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.drezz.model.Customer;
import com.drezz.repository.CustomerRepository;
import com.drezz.service.ICustomerService;

@Service
public class CustomerServiceImpl  implements ICustomerService{
	
	@Autowired
	private CustomerRepository cusRepo;

	//save the customer
	@Override
	public Customer saveCustomer(Customer customer) {
		return cusRepo.save(customer);
	}
	
	// view all record
	@Override
	public List<Customer> getAll() {
		return cusRepo.findAll();
	}
	
	//delete the record
	
	@Override
	public void deleteRecord(Customer customer) {
		 cusRepo.deleteById(customer.getId());
	}

	
	
//update the record
	@Override
	public Customer updateRecord(Customer customer) {
		cusRepo.findById(customer.getId());
		return cusRepo.save(customer);
	}

	@Override
	public Customer getOneCustomer(Integer id) {
		
		return cusRepo.getOne(id);
	}

	@Override
	public Customer getOneCustomer(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	

}

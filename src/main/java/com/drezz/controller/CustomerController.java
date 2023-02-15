package com.drezz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.drezz.model.Customer;
import com.drezz.service.ICustomerService;


@Controller
@RequestMapping("/cus")
public class CustomerController {
	
	@Autowired
	private ICustomerService cusService;
	
	//display the for
	@RequestMapping("/reg")
	public String showPage() {
		return"RegisterPage";
	}
	
	//save the record
	@RequestMapping("/save")
	public String savaRecord(@ModelAttribute Customer customer,Model model) {
		Customer saveCustomer = cusService.saveCustomer(customer);
		String msg="Custoer id is --" +saveCustomer.getId() + "sucessfull Register";
		model.addAttribute("msg",msg);
		return "RegisterPage";
	}
	
	//view the record
	@RequestMapping("/viewCust")
	public String viewAll(Model model) {
		List<Customer> custoer = cusService.getAll();
		model.addAttribute("custoer", custoer);
		return "custview";
	}
	
	//delete the record
	
	@RequestMapping("/deleteview")
	public String deleteRecord(@RequestParam("id")Long id,Model model) {
		Customer customer = new Customer();
		customer.setId(id);
		cusService.deleteRecord(customer);
		
		//delete the record..
		List<Customer> all = cusService.getAll();
		model.addAttribute("custoer", all);
		String msg="Delete the Record "+customer.getId() +" sucessfully";
		model.addAttribute("msg",msg);
		return "custview";
		}
	
	//get oneRecord the record
	@RequestMapping("/updateview")
	public String getoneRecord(@RequestParam("id")Long id,Model model) {
		Customer oneCustomer = cusService.getOneCustomer(id);
		model.addAttribute("oneCus",oneCustomer);
		return "updateRecord";
	}
	
	@RequestMapping("/updateRecord")
	public String updateRecord(@ModelAttribute Customer customer,Model model) {
		Customer updateRecord = cusService.updateRecord(customer);
		String msg= "Update Success "+updateRecord.getId()+ "fully";
		List<Customer> all = cusService.getAll();
		model.addAttribute("custoer", all);
		model.addAttribute("msg",msg);
		return "custview";
		}

}

package com.niit.Employee.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.niit.Employee.model.Employee;
import com.niit.Employee.service.Employeeserve;




@Controller
public class EmployeeController {
	@Autowired
	Employeeserve empService;
	
	Employee employee;
	
	@GetMapping("/")
	public String homePage(Model model)
	{
		//model.addAttribute("employee",new Employee());
		model.addAttribute("employee",new Employee());
		return "Success";
	}
	/*@GetMapping("/employee/view")
	public String viewEmployee(Model model)
	{
		List<Employee> list=empService.list();
		model.addAttribute("list", list);
		return "AddEmployee";
	}*/
	/*
	@PostMapping("/employee/register")
	public String addEmployee(@ModelAttribute("employee") Employee employee)
	{
		
		boolean b=empService.addServe(employee);
		
			return "redirect:/";
		
		
	} */
	
}

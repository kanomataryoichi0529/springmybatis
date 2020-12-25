package jp.ken.springmybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jp.ken.springmybatis.dao.EmployeeMapper;
import jp.ken.springmybatis.entity.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeMapper mapper;

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("list-employees");
		mav.addObject("listemployees", mapper.getAllEmployees());
		return mav;
	}
	@RequestMapping("/showFormAddEmployee")
	public ModelAndView showForm(){
		ModelAndView mav = new ModelAndView("add-employee");
		mav.addObject("employee", new Employee());
		return mav;
	}
	@RequestMapping("/saveProcess")
	public String saveProcess(@ModelAttribute("employee")Employee employee){
		
		if(employee.getId() == null){
			//save operation
			mapper.saveEmployee(employee);
		}else{
			//update operation
			mapper.updateEmployee(employee);
			}
		return "redirect:/";
	}
	
	@RequestMapping("/deleteemployee")
	public String deleteEmployee(@RequestParam("employeeId")int employeeId){
		mapper.deleteEmployee(employeeId);
		return "redirect:/";
	}
	
	@RequestMapping("/editemployee")
	public ModelAndView editEmployee(@RequestParam("employeeId")int employeeId){
		ModelAndView mav = new ModelAndView("add-employee");
		Employee employee = mapper.findById(employeeId);
		mav.addObject("employee", employee);
		return mav;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

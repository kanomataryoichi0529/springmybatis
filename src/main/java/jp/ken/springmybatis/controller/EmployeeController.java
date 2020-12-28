package jp.ken.springmybatis.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.GroupSequence;
import javax.validation.groups.Default;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jp.ken.springmybatis.model.ErrorCheckGroup1;
import jp.ken.springmybatis.dao.EmployeeMapper;
import jp.ken.springmybatis.entity.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeMapper mapper;

	@GroupSequence({ Default.class, ErrorCheckGroup1.class })
	interface GroupOrder {
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String toIndex(Model model) {
		return "index";
	}

	@RequestMapping("/list")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("list-employees");
		mav.addObject("listemployees", mapper.getAllEmployees());
		return mav;
	}

	@RequestMapping("/showFormAddEmployee")
	public ModelAndView showForm() {
		ModelAndView mav = new ModelAndView("add-employee");
		mav.addObject("employee", new Employee());
		return mav;
	}

	@RequestMapping("/saveProcess")
	public String saveProcess(@ModelAttribute("employee") Employee employee) {

		if (employee.getId() == null) {
			// save operation
			mapper.saveEmployee(employee);
		} else {
			// update operation
			mapper.updateEmployee(employee);
		}
		return "redirect:/list";
	}

	@RequestMapping("/deleteemployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId) {
		mapper.deleteEmployee(employeeId);
		return "redirect:/list";
	}

	@RequestMapping("/editemployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int employeeId) {
		ModelAndView mav = new ModelAndView("add-employee");
		Employee employee = mapper.findById(employeeId);
		mav.addObject("employee", employee);
		return mav;
	}

	@RequestMapping(value = "/registemployee", method = RequestMethod.GET)
	public String toRegist(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "regist-employee";
	}

	@RequestMapping(value = "/registemployee", method = RequestMethod.POST)
	public String regist(@Validated(GroupOrder.class) @ModelAttribute("employee") Employee employee,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("errorMessage", "An error has occurred.");
			return "regist-employee";
		} else {
			mapper.saveEmployee(employee);
		}
		return "redirect:/list";
	}

	@RequestMapping(value = "/searchemployee-and", method = RequestMethod.GET)
	public String toSearchAnd(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "search-employee-and";
	}

	@RequestMapping(value = "/searchemployee-and", method = RequestMethod.POST)
	public String searchAnd(@ModelAttribute("employee") Employee employee, Model model) {
			model.addAttribute("employeeList", mapper.getVagueAnd(employee));
			return "search-employee-and";
	}
	@RequestMapping(value = "/searchemployee-or", method = RequestMethod.GET)
	public String toSearchOr(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "search-employee-or";
	}

	@RequestMapping(value = "/searchemployee-or", method = RequestMethod.POST)
	public String searchOr(@ModelAttribute("employee") Employee employee, Model model) {
			model.addAttribute("employeeList", mapper.getVagueOr(employee));
			return "search-employee-or";
	}
}

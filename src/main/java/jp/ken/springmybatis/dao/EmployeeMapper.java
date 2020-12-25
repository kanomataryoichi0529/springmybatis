package jp.ken.springmybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import jp.ken.springmybatis.entity.Employee;
import jp.ken.springmybatis.util.MybatisUtil;

@Repository
public class EmployeeMapper {

	public List<Employee> getAllEmployees() {

		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		List<Employee> employeeList = session.selectList("getAllEmployees");
		session.commit();
		session.close();
		return employeeList;
	}

	public void saveEmployee(Employee employee) {

		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertEmployee", employee);
		session.commit();
		session.close();
	}

	public void deleteEmployee(int employeeId) {

		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteEmployee", employeeId);
		session.commit();
		session.close();

	}

	public Employee findById(int employeeId) {

		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		Employee employee = (Employee) session.selectOne("findById", employeeId);
		session.commit();
		session.close();
		return employee;
	}
	
	public void updateEmployee(Employee employee) {

		SqlSession session = MybatisUtil.getSqlSessionFactory().openSession();
		session.update("updateEmployee", employee);
		session.commit();
		session.close();
	}

}

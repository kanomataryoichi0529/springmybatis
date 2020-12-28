package jp.ken.springmybatis.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import jp.ken.springmybatis.model.ErrorCheckGroup1;

public class Employee {
	
	private String vagueName;
	private String vagueEmail;
	private String vagueGender;
	
	public String getVagueEmail() {
		return vagueEmail;
	}

	public void setVagueEmail(String vagueEmail) {
		this.vagueEmail = vagueEmail;
	}

	public String getVagueGender() {
		return vagueGender;
	}

	public void setVagueGender(String vagueGender) {
		this.vagueGender = vagueGender;
	}

	public String getVagueName() {
		return vagueName;
	}

	public void setVagueName(String vagueName) {
		this.vagueName = vagueName;
	}

	private Integer id;
	
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your name")
	private String fullname;

	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your email")
	@Email(groups=ErrorCheckGroup1.class,
			message="Please enter valid email")
	private String email;
	
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your gender")
	private String gender;
	
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your hobbies")
	private String hobbies;
	
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your counry")
	private String country;
	
	@NotEmpty(groups=ErrorCheckGroup1.class,
			message="Please enter your address")
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fullname=" + fullname + ", email=" + email + ", gender=" + gender
				+ ", hobbies=" + hobbies + ", country=" + country + ", address=" + address + "]";
	}
}
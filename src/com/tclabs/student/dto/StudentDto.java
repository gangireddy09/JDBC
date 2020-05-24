package com.tclabs.student.dto;

public class StudentDto {
	
	private Long id;
	private String name;
	private String mobileNo;
	private String mailId;
	private String college;
	private String qualification;
	private String branch;
	private String yearOfPassing;
	private String registrationNo;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return mailId;
	}
	public void setEmailId(String mailId) {
		this.mailId = mailId;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getBranch() {
		return branch;
	}
	public void setbranch(String branch) {
		this.branch = branch;
	}
	public String getYearOfPassing() {
		return yearOfPassing;
	}
	public void setYearOfPassing(String yearOfPassing) {
		this.yearOfPassing = yearOfPassing;
	}
	public String getRegisteredNo() {
		return registrationNo;
	}
	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}
	
	public String toString() {
		return "Student Details = [id = "+ id + ", name = "+ name +", mobileNo = "+ mobileNo + ", mailId = "
				+ mailId + ", college = "+ college + ", qualification = " + qualification + ", branch = " +
				branch + ", yearOfPassing = "+ yearOfPassing + ", registrationNo = "+ registrationNo + "]";
	}
}

package com.tclabs.student.test;

import java.sql.SQLException;
import java.util.ArrayList;

import com.tclabs.student.dao.StudentDao;
import com.tclabs.student.dto.StudentDto;


public class DetailsTest {
	
	static StudentDao dao = new StudentDao();
	static StudentDto dto = new StudentDto();
	
	public static void save() throws ClassNotFoundException, SQLException {
		
		dto.setName("John");
		dto.setMobileNo("9291485678");
		dto.setEmailId("john@mail.com");
		dto.setCollege("St.Meris");
		dto.setQualification("B.tech");
		dto.setbranch("ECE");
		dto.setYearOfPassing("2020");
		dto.setRegistrationNo("TCP0001");
		
		dao.saveStudent(dto);
	}
	
	public static void update() throws ClassNotFoundException, SQLException {
		
		dto.setName("Mical");
		dto.setMobileNo("0802255668");
		dto.setEmailId("mical@mail.com");
		dto.setId((long) 2);
		
		dao.updateStudent(dto);
	}
	
	public static void delete() throws ClassNotFoundException, SQLException {
		
		dto.setId(23l);
		dao.deleteStudent(dto);
	}
	
	public static void getList() throws ClassNotFoundException, SQLException {
		
		ArrayList<StudentDto> list = new ArrayList<>();
		list = dao.getAll();
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		//save();
		//update();
		//delete();
		getList();
	}
	
}

package com.tclabs.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tclabs.student.connection.ConnectionEx;
import com.tclabs.student.dto.StudentDto;
import com.tclabs.student.queries.Queries;

public class StudentDao {
	
	PreparedStatement st;
	ConnectionEx link = new ConnectionEx();
	
	public int saveStudent(StudentDto dto) throws ClassNotFoundException, SQLException {
		Connection connect = link.getConnection();
		
		st = connect.prepareStatement(Queries.Save);
		
		st.setString(1, dto.getName());
		st.setString(2, dto.getMobileNo());
		st.setString(3, dto.getEmailId());
		st.setString(4, dto.getCollege());
		st.setString(5, dto.getQualification());
		st.setString(6, dto.getBranch());
		st.setString(7, dto.getYearOfPassing());
		st.setString(8, dto.getRegisteredNo());
		
		int result = st.executeUpdate();
		System.out.println(result + " Row is Inserted");
		return result;
		}
	
	public int updateStudent(StudentDto dto) throws ClassNotFoundException, SQLException {
		Connection connect = link .getConnection();
		
		st = connect.prepareStatement(Queries.Update);
		
		st.setString(1, dto.getName());
		st.setString(2, dto.getMobileNo());
		st.setString(3, dto.getEmailId());
		st.setLong(4, dto.getId());
		
		int result = st.executeUpdate();
		System.out.println(result + " row is updated");
		return result;
	}
	
	public int deleteStudent(StudentDto dto) throws ClassNotFoundException, SQLException {
		Connection connect = link.getConnection();
		
		st = connect.prepareStatement(Queries.Delete);
		
		st.setLong(1, dto.getId());
		
		int result = st.executeUpdate();
		System.out.println(result + "row is deleted");
		return result;
	}
	
	public ArrayList<StudentDto> getAll() throws ClassNotFoundException, SQLException {
		ArrayList<StudentDto> list = new ArrayList<>();
		Connection connect = link.getConnection();
		
		st = connect.prepareStatement(Queries.GETLIST);
		ResultSet result = st.executeQuery();
		
		while(result.next()) {
			StudentDto dto = new StudentDto();
			dto.setId(result.getLong(1));
			dto.setName(result.getString(2));
			dto.setMobileNo(result.getString(3));
			dto.setEmailId(result.getString(4));
			dto.setCollege(result.getString(5));
			dto.setQualification(result.getString(6));
			dto.setYearOfPassing(result.getString(7));
			dto.setRegistrationNo(result.getString(8));
			list.add(dto);
		}
		return list;
	}
	
	
}

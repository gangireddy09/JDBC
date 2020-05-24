package com.tclabs.student.queries;

public class Queries {
	
	public static final String Save = "insert into candidate_mst_tbl(NAME, MOBILE_NO, EMAIL_ID, COLLEGE, QUALIFICATION, BRANCH, REGISTRATION_NO, YEAR_OF_PASSING) values(?,?,?,?,?,?,?,?)";
	public static final String Update = "update candidate_mst_tbl set name=?,mobile_no=?,email_id=? where id=?";
	public static final String Delete = "delete from candidate_mst_tbl where id = ?";
	public static final String GETLIST = "select * from candidate_mst_tbl";
}

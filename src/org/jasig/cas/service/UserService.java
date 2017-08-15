package org.jasig.cas.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

public class UserService {
	private JdbcTemplate jdbcTemplate;   
	public void saveUser(String username,String password,String group){
		//首先判断用户是否存在.如果不存在就创建用户,并且创建虚拟户
		String sql ="INSERT INTO sys_user( id, company_id, office_id, login_name, password, no, name, email, phone, mobile, user_type, create_by, create_date, update_by, update_date, remarks, login_flag, photo, del_flag, account_no ) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ) ";
		jdbcTemplate.update(sql,   new PreparedStatementSetter(){

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				
			}
			
			
		});
	}
	
	public boolean exits(String username){
		return jdbcTemplate.queryForInt("select count(login_name) from sys_user wher login_name=?", username)>0?false:true;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
}

package com.varxyz.jvx330.jdbc.example1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.varxyz.jvx330.jdbc.Customer;
import com.varxyz.jvx330.jdbc.DataSourceConfig;

public class AddCustomerDataSourceDao {
	private DataSource dataSource;
	
	public AddCustomerDataSourceDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	// 방식 1번째
	public void addCustomer(Customer customer) {
		String sql = "INSERT INTO Customer (email, passwd, name, ssn, phone) "
				+ "VALUES(?, ?, ?, ?, ?)";
		
		try(Connection con = dataSource.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {
				pstmt.setString(1, customer.getEmail());
				pstmt.setString(2, customer.getPasswd());
				pstmt.setString(3, customer.getName());
				pstmt.setString(4, customer.getSsn());
				pstmt.setString(5, customer.getPhone());
				
				pstmt.executeUpdate();
				con.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = 
				new AnnotationConfigApplicationContext(DataSourceConfig.class);
		
		AddCustomerDataSourceDao dao = 
				context.getBean("addCustomerDataSourceDao", AddCustomerDataSourceDao.class);
		Customer c = new Customer();
		c.setEmail("seongho@java.com");
		c.setPasswd("1234");
		c.setName("성호");
		c.setSsn("930418-1111111");
		c.setPhone("010-2503-4372");
		dao.addCustomer(c);
		System.out.println("-inserted-");
		context.close();
	}
}

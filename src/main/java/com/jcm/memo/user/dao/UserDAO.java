package com.jcm.memo.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jcm.memo.user.model.User;

@Repository
public interface UserDAO {

	public int insertUser(
			@Param("loginId") String loginId,
			@Param ("password") String password,
			@Param ("name") String name,
			@Param ("email") String email);
	
	
	public User selectUser(
			@Param("loginId")String loginId,
			@Param("password") String password); 
	
	
	
}

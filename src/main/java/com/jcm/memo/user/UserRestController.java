package com.jcm.memo.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jcm.memo.user.bo.UserBO;

@RestController
public class UserRestController {
	
	@Autowired
	private UserBO userBO;

	@PostMapping("/user/sign_up")
	public Map<String,String> signUp(
			@RequestParam("loginId")String loginId,
			@RequestParam("password")String password,
			@RequestParam("name")String name,
			@RequestParam("email")String email){
		
		int count = userBO.addUser(loginId, password, name, email);
		
		//{"result":"success"}
		//{"result":"fail"}
		
		Map<String, String > result= new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("reusult", "fail");
		}
		return result;
	}
}
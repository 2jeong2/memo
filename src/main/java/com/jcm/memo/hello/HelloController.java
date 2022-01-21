package com.jcm.memo.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

	@ResponseBody
	@RequestMapping("/hello")
	public String helloWorld() {
		return "Hello World!!";
		
		//소켓 
		//쿠키 - 내컴퓨터
		//세션 - 서버에 저장, 나에게 세션id부여
	}
}

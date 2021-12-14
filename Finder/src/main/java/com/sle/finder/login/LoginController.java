package com.sle.finder.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		UserVO loginvo = service.getUser(vo);
		if (loginvo != null) {
			System.out.println("로그인 성공");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/board/list";
		}
		else {
			System.out.println("로그인 실패");
			return returnURL = "redirect:/login/login";
		}
		return returnURL;
	}
	
	//log out 하기...
	@RequestMapping(value = "login")
	public String logout(HttpSession session) {
		session.invalidate();
		return  "redirect:/login/login";
	}
	
}

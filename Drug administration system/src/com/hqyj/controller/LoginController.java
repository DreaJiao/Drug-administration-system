package com.hqyj.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hqyj.bean.Login;
import com.hqyj.service.LoginService;

@Controller
@RequestMapping("/user")
public class LoginController {
	@Autowired
	private LoginService LoginService;

	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response) {
		Login user = LoginService.findByName(request.getParameter("username"));
		if (null == user || "".equals(user)) {
			return "/index";
		} else {
			if ((user.getPassword()).equals(request.getParameter("password"))) {
				System.out.println();
				Cookie cookie;
				try {
					cookie = new Cookie("username", URLEncoder.encode(
							user.getUsername(), "utf-8"));
					Cookie cookie1 = new Cookie("usertype", String.valueOf(user
							.getUsertype()));
					response.addCookie(cookie1);
					response.addCookie(cookie);
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return "/adminList";
			} else {
				return "/index";
			}
		}
	}

	@RequestMapping("/userList")
	public String userList() {
		return "redirect:/user/queryAll.do";
	}

	@RequestMapping("/exitAll")
	public String exitAll() {
		return "/index";
	}

}

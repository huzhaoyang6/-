package com.user.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.user.home.Make;
import com.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;
	@RequestMapping("list")
	public String list(Model model,String search) {
		List<Map<?,?>> list=service.list(search);
		model.addAttribute("list", list);
		return "list";
	}
	@RequestMapping("tomake")
	public String tomake(Model model,String id) {
		Map<?,?> map=service.tomake(id);
		model.addAttribute("map", map);
		return "make";
	}
	@RequestMapping("add")
	@ResponseBody
	public int add(Make make) {
		int i=service.add(make);
		return i;
	}
	@RequestMapping("update")
	@ResponseBody
	public int update(Make make) {
		int i=service.update(make);
		return i;
	}
	@RequestMapping("del")
	@ResponseBody
	public int del(Make make) {
		int i=service.del(make);
		return i;
	}

}

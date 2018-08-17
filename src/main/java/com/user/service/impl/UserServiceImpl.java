package com.user.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.home.Make;
import com.user.mapper.UserMapper;
import com.user.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper mapper;

	@Override
	public List<Map<?, ?>> list(String search) {
		return mapper.list(search);
	}

	@Override
	public Map<?, ?> tomake(String id) {
		return mapper.tomake(id);
	}

	@Override
	public int add(Make make) {
		mapper.addup(make);
		return mapper.add(make);
	}

	@Override
	public int update(Make make) {
		return mapper.update(make);
	}

	@Override
	public int del(Make make) {
		mapper.delup(make);
		return mapper.del(make);
	}

	
	

}

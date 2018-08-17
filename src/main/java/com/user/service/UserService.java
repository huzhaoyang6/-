package com.user.service;

import java.util.List;
import java.util.Map;

import com.user.home.Make;

public interface UserService {

	List<Map<?, ?>> list(String search);

	Map<?, ?> tomake(String id);

	int add(Make make);

	int update(Make make);

	int del(Make make);

}

package com.user.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.user.home.Make;

public interface UserMapper {

	List<Map<?, ?>> list(@Param("search")String search);

	Map<?, ?> tomake(String id);

	int add(Make make);

	int update(Make make);

	void addup(Make make);

	int del(Make make);

	void delup(Make make);

}

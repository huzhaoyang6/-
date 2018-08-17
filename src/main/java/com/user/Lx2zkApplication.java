package com.user;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.user.mapper")
public class Lx2zkApplication {

	public static void main(String[] args) {
		SpringApplication.run(Lx2zkApplication.class, args);
	}
}

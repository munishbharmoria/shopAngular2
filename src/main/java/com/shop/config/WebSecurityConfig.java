package com.shop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.access.AccessDeniedHandler;

import com.shop.util.Constant;

@EnableWebSecurity
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	//@Autowired
	//private AccessDeniedHandler accessDeniedHandler;

	// roles admin allow to access /admin/**
	// roles user allow to access /user/**
	// custom 403 access denied handler
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
				.antMatchers("*/shop/*").permitAll()
				.antMatchers("/admin").hasRole("ADMIN")	
				//.anyRequest().permitAll()
				.and().httpBasic();
		http.csrf().disable();
	}

	// create two users, admin and user
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
		//.withUser("user").password("password").roles("USER")
		//.and()
		.withUser(Constant.adminUserName).password(Constant.adminPassword).roles(Constant.adminRole);
	}
}

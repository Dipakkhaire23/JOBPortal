package com.alpha.JobApp;

import com.alpha.JobApp.repo.jobrepo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class JopAppApplication {

	public static void main(String[] args) {

		 ApplicationContext context=SpringApplication.run(JopAppApplication.class, args);
		jobrepo jobrepo=context.getBean(com.alpha.JobApp.repo.jobrepo.class);
		System.out.println(jobrepo.findAll());
		System.out.println("hello");

	}

}

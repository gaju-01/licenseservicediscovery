package com.microservices.licenseservicediscovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class LicenseservicediscoveryApplication {

	public static void main(String[] args) {
		SpringApplication.run(LicenseservicediscoveryApplication.class, args);
	}

}

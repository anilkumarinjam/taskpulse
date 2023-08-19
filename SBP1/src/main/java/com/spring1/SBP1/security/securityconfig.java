package com.spring1.SBP1.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import static org.springframework.security.config.Customizer.withDefaults;
@Configuration
@EnableWebSecurity
public class securityconfig {
	@Bean
	InMemoryUserDetailsManager userDetailsService() {
        UserDetails user= User.builder()
        				  .username("Anil")
                          .password(passwordEncoder().encode("Anil")) 
                          .roles("USER")
                          .build();           
        return new InMemoryUserDetailsManager(user);
    }
	@Bean
    PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	@Bean
	SecurityFilterChain securityfilterchain(HttpSecurity http) throws Exception{
        return http
                .authorizeHttpRequests(auth -> {
                    auth.antMatchers("/").hasRole("USER");
                    auth.anyRequest().authenticated();})
                .formLogin(formlogin -> {
                	formlogin
                	.usernameParameter("Anil")
                	.usernameParameter("Praveen");})
                .oauth2Login(withDefaults())
				.build();
	}
}

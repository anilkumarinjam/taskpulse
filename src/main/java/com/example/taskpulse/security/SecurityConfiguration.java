package com.example.taskpulse.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.header.writers.StaticHeadersWriter;

@Configuration
public class SecurityConfiguration {

    @Bean
    public InMemoryUserDetailsManager userDetailsService() {
        UserDetails user = User.builder()
            .username("Anil")
            .password(passwordEncoder().encode("Anil"))
            .roles("USER")
            .build();
        UserDetails user1 = User.builder()
            .username("admin")
            .password(passwordEncoder().encode("nimda"))
            .roles("USER")
            .build();
        return new InMemoryUserDetailsManager(user, user1);
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterchain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth.anyRequest().authenticated())
            .formLogin(form -> form
                .defaultSuccessUrl("/", true)
                .permitAll()
            )
            .logout(logout -> logout
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout")
                .permitAll()
            )
            .csrf().disable()
            .headers(headers -> headers
                .frameOptions().disable()
                // Setting cache control headers to prevent caching of secured pages
                .cacheControl().disable()
                .addHeaderWriter(new StaticHeadersWriter("Cache-Control", "no-cache, no-store, must-revalidate"))
                .addHeaderWriter(new StaticHeadersWriter("Pragma", "no-cache"))
                .addHeaderWriter(new StaticHeadersWriter("Expires", "0"))
            );

        return http.build();
    }
}

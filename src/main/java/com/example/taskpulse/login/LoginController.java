package com.example.taskpulse.login;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes("name")
public class LoginController {
	// @RequestMapping("welcome")
	// public String welcome() {
	// 	return "welcome";
	// }
	@RequestMapping("/")
	public String gowelcome(Model m) {
		m.addAttribute("name",getLoggedinUserName());
		return "welcome";
	}
	private String getLoggedinUserName() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        
        // Check if the authentication is an OAuth2 authentication token
        if (authentication instanceof OAuth2AuthenticationToken) {
            OAuth2AuthenticationToken oauthToken = (OAuth2AuthenticationToken) authentication;
            return oauthToken.getPrincipal().getAttribute("name");
        }
        
        // Fallback to the default username if not an OAuth2 authentication
        return authentication.getName();
    }
}

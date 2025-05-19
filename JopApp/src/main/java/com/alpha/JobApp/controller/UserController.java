package com.alpha.JobApp.controller;
import com.alpha.JobApp.model.user;
import com.alpha.JobApp.services.userServiceregistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private userServiceregistration service;

    @Autowired
    private AuthenticationManager authenticationManager;



    @PostMapping("/register")
    public String register(user us) {
        if (us.getPass() == null || us.getPass().isEmpty()) {
            return "signup";
        }
        service.saveuser(us);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // return login.jsp
    }
    @GetMapping("/signup")
    public String signUpPage() {
        return "signup"; // signup.jsp
    }
    @PostMapping("/log")
    public String login(@ModelAttribute user loginUser) {
        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(loginUser.getUsername(), loginUser.getPass())
            );

            if (authentication.isAuthenticated()) {
                SecurityContextHolder.getContext().setAuthentication(authentication);

                return "home"; // redirect to home if authenticated
            } else {
                return "login"; // redirect back with error
            }
        } catch (Exception e) {
            return "login"; // handle failed authentication
        }
    }
}

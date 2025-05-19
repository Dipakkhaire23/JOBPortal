package com.alpha.JobApp.services;


import com.alpha.JobApp.model.user;
import com.alpha.JobApp.repo.userrepo;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class userServiceregistration {
    @Autowired
    userrepo userrep;
    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//    @Transactional
     public void saveuser(user use){
         use.setPass(encoder.encode(use.getPass()));
         userrep.save(use);
     }



}

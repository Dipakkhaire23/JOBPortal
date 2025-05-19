package com.alpha.JobApp.services;


import com.alpha.JobApp.model.user;
import com.alpha.JobApp.model.userprinciple;
import com.alpha.JobApp.repo.userrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class userservices implements UserDetailsService {
    @Autowired
     private userrepo userrepo;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
         user user =userrepo.findByUsername(username);
         if(user==null){
             System.out.println("not  found");
             throw new UsernameNotFoundException("not forund");

         }
        return new userprinciple(user);
    }
}

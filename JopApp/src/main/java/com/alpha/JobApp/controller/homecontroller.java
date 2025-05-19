package com.alpha.JobApp.controller;


import org.springframework.ui.Model;

import com.alpha.JobApp.model.JobPost;
import com.alpha.JobApp.services.Jobservices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class homecontroller {
    @Autowired
      private  Jobservices jobservices;


        @GetMapping({"/","home"})
        public String homepage(){
            return "home";
        }
        @GetMapping("addJob")
        public String addJob(){
            return "addjob";
        }
        @PostMapping("handleForm")
        public String handleform(JobPost jobPost){
            jobservices.addjob(jobPost);

            return "success";
        }
    @GetMapping("viewalljobs")
    public String viewJobs(Model model) {

//         Fetch the list of job posts from the service layer
        List<JobPost> jobPost1 = jobservices.getjob();
        System.out.println(jobPost1);
//
//
        // Add the list to the model
        model.addAttribute("jobPosts", jobPost1);

        // Return the name of the view (viewalljobs.html or viewalljobs.jsp)
        return "viewalljobs";
    }

    @GetMapping("updateJob")
    public String update(){

            return "updatejop";
    }

//    @PostMapping("updateJob")
//    public String updatepost(@RequestBody JobPost jop ){
//        System.out.println(jop.getPostId());
//        jobservices.updatedata(jop,jop.getPostId());
//        System.out.println("k");
//        return "viewalljobs";
//    }

}

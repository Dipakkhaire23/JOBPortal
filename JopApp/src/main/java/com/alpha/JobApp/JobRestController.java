package com.alpha.JobApp;

import com.alpha.JobApp.model.JobPost;
import com.alpha.JobApp.services.Jobservices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class JobRestController {
    @Autowired
    Jobservices jobservices;

// fetch the data from server
                        @GetMapping(path = "/job" ,produces = {"application/json"})
                    //    @ResponseBody
                        public List<JobPost> getalldata(){
                            return jobservices.getjob();
                        }


                            @GetMapping("/job/{l}")
                    //    @ResponseBody
                        public Optional<JobPost> getjobs(@PathVariable("l") int l){
//                                System.out.println(l+" "+name);
                            return jobservices.getjob(l);
                        }
    // sent data from clent to server
                            @PostMapping(path="jobpost",consumes = {"application/json"})
                                public Optional<JobPost> addjob(@RequestBody JobPost post ){
                                                    jobservices.addjob(post);
                                                    return jobservices.getjob(post.getPostId());
                                }
                                        @PutMapping("jobpost")
                                        public  void updata( @RequestBody JobPost jobPost ){
                                            jobservices.updatedata(jobPost);

                                        }
                                        @DeleteMapping("jobpost/{id}")
                                        public void deletedata(@PathVariable("id") int id){
                                                            jobservices.deletedat(id);

                                        }
                                        @GetMapping("load")
                                        public String laod(){
                                                            jobservices.load();
                                                            return "loaded";
                                        }
                                        @GetMapping("jobpost/keyword/{keyword}")
                                        public List<JobPost> searchbykyword(@PathVariable("keyword") String keyword){
                                                            return jobservices.searchkeyword(keyword);
                                        }
}

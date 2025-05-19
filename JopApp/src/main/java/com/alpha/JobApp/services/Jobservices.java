package com.alpha.JobApp.services;

import com.alpha.JobApp.model.JobPost;
import com.alpha.JobApp.repo.jobrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class Jobservices {
    @Autowired
     private  jobrepo jobrepo;


     public void addjob(JobPost jobPost1){
//         jobrepo.addjob(jobPost1);
         jobrepo.save(jobPost1);
     }



    public List<JobPost> getjob(){
//         return  jobrepo.getalljobs();

        return jobrepo.findAll();
    }



    public Optional<JobPost> getjob(int i){
//         int a=100/0;
//        return  jobrepo.getalljobs(i);
        return  jobrepo.findById(i);
    }

//    public void updatedata(int post) {
////         jobrepo.updatatedata(post);
//        jobrepo.save(post);
//
//    }

public void updatedata(JobPost post ) {
         jobrepo.save(post);

         // used with id
//    Optional<JobPost> existingJob = jobrepo.findById(id);
//    if(existingJob.isPresent()){
//        JobPost job = existingJob.get();
//        job.setPostId(id);
//        job.setPostDesc(post.getPostDesc());
//        job.setPostProfile(post.getPostProfile());
//        job.setReqExperience(post.getReqExperience());
//        job.setPostTechStack(post.getPostTechStack());
//        jobrepo.save(job);
//    }


}

    public void deletedat(int id) {
         jobrepo.deleteById(id);
    }

    public void load() {
        List<JobPost> job= new ArrayList<>(Arrays.asList(
        new JobPost(1, "Java Developer", "Must have good experience in core Java and advanced Java", 2, List.of("Core Java", "J2EE", "Spring Boot", "Hibernate")),
        new JobPost(2, "Frontend Developer", "Experience in building responsive web applications using React", 3, List.of("HTML", "CSS", "JavaScript", "React")),
        new JobPost(3, "Data Scientist", "Strong background in machine learning and data analysis", 4, List.of("Python", "Machine Learning", "Data Analysis")),
        new JobPost(4, "DevOps Engineer", "Expertise in CI/CD pipelines and containerization tools", 3, List.of("Docker", "Kubernetes", "Jenkins", "AWS")),
        new JobPost(5, "Mobile App Developer", "Proficiency in building cross-platform mobile applications", 2, List.of("Flutter", "React Native", "Android", "iOS")),
        new JobPost(6, "Backend Developer", "Experience in designing and developing RESTful APIs", 3, List.of("Node.js", "Express", "MongoDB", "PostgreSQL")),
        new JobPost(7, "AI/ML Engineer", "Strong knowledge of neural networks and deep learning frameworks", 4, List.of("TensorFlow", "PyTorch", "NLP", "Computer Vision")),
        new JobPost(8, "Cybersecurity Analyst", "Hands-on experience in identifying and mitigating security risks", 3, List.of("Ethical Hacking", "Network Security", "Penetration Testing", "SIEM Tools")),
        new JobPost(9, "UI/UX Designer", "Skilled in creating intuitive and visually appealing user interfaces", 2, List.of("Adobe XD", "Figma", "Sketch", "Wireframing")),
        new JobPost(10, "Cloud Architect", "Expertise in designing cloud-based infrastructure and services", 5, List.of("AWS", "Azure", "Google Cloud", "Cloud Security"))


));

        jobrepo.saveAll(job);
    }

    public List<JobPost> searchkeyword(String keyword) {
            return jobrepo.findByPostProfileContainingOrPostDescContaining(keyword,keyword);
    }
}

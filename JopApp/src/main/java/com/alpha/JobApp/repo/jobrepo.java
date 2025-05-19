package com.alpha.JobApp.repo;

import com.alpha.JobApp.model.JobPost;
import com.alpha.JobApp.model.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Repository
public interface jobrepo  extends JpaRepository<JobPost,Integer> {

     List<JobPost> findByPostProfileContainingOrPostDescContaining(String postProfile,String postDesc);
//     Optional<user> findByUsername(String username);


}

//List<JobPost> job= new ArrayList<>(Arrays.asList(
//        new JobPost(1, "Java Developer", "Must have good experience in core Java and advanced Java", 2, List.of("Core Java", "J2EE", "Spring Boot", "Hibernate")),
//        new JobPost(2, "Frontend Developer", "Experience in building responsive web applications using React", 3, List.of("HTML", "CSS", "JavaScript", "React")),
//        new JobPost(3, "Data Scientist", "Strong background in machine learning and data analysis", 4, List.of("Python", "Machine Learning", "Data Analysis")),
//        new JobPost(4, "DevOps Engineer", "Expertise in CI/CD pipelines and containerization tools", 3, List.of("Docker", "Kubernetes", "Jenkins", "AWS")),
//        new JobPost(5, "Mobile App Developer", "Proficiency in building cross-platform mobile applications", 2, List.of("Flutter", "React Native", "Android", "iOS")),
//        new JobPost(6, "Backend Developer", "Experience in designing and developing RESTful APIs", 3, List.of("Node.js", "Express", "MongoDB", "PostgreSQL")),
//        new JobPost(7, "AI/ML Engineer", "Strong knowledge of neural networks and deep learning frameworks", 4, List.of("TensorFlow", "PyTorch", "NLP", "Computer Vision")),
//        new JobPost(8, "Cybersecurity Analyst", "Hands-on experience in identifying and mitigating security risks", 3, List.of("Ethical Hacking", "Network Security", "Penetration Testing", "SIEM Tools")),
//        new JobPost(9, "UI/UX Designer", "Skilled in creating intuitive and visually appealing user interfaces", 2, List.of("Adobe XD", "Figma", "Sketch", "Wireframing")),
//        new JobPost(10, "Cloud Architect", "Expertise in designing cloud-based infrastructure and services", 5, List.of("AWS", "Azure", "Google Cloud", "Cloud Security"))
//
//
//));
//public List<JobPost> getalljobs(){
//    return job;
//
//}
//
//public  void addjob(JobPost  job1){
//    System.out.println(job1);
//    job.add(job1);
//}
//
//public JobPost getalljobs(int postI){
//    for( JobPost job1:job){
//        if(job1.getPostId()==postI)
//            return job1;
//    }
//    return null;
//}
//
//public void updatatedata(JobPost post) {
//
//    for(JobPost j:job){
//        if(j.getPostId()==post.getPostId()){
//            j.setPostId(post.getPostId());
//            j.setPostProfile(post.getPostProfile());
//            j.setPostDesc(post.getPostDesc());
//            j.setReqExperience(post.getReqExperience());
//            j.setPostTechStack(post.getPostTechStack());
//        }
//    }
//}
//
//public void delete(int id) {
//    for(JobPost jb:job){
//        if(jb.getPostId()==id){
//            job.remove(jb);
//        }
//    }
//}

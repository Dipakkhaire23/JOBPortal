package com.alpha.JobApp.repo;


import com.alpha.JobApp.model.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface userrepo extends JpaRepository<user,Integer> {
    user findByUsername( String username);

}

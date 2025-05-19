package com.alpha.JobApp.model;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Entity
@Data
@Table(name = "USERInfo")
public class user {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "username", unique = true, nullable = false)  // Added unique constraint and not-null
    private String username;

    @Column(name = "pass", nullable = false)  // Not null constraint for password field
    private String pass;

    public user() {
    }

    public user(int id, String username, String pass) {
        this.id = id;
        this.username = username;
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}

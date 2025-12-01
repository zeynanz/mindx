package com.mindx.model;

import java.io.Serializable;

public class User implements Serializable {
    private String username;
    private String password;
    private String fullname;
    private String email;
    private String matric;

    public User() {}

    public User(String username, String password, String fullname, String email, String matric) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.matric = matric;
    }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getMatric() { return matric; }
    public void setMatric(String matric) { this.matric = matric; }
}

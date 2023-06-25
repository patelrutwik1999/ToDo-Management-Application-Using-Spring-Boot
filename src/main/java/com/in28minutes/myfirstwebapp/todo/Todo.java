package com.in28minutes.myfirstwebapp.todo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

@Entity
public class Todo {
    @Id
    @GeneratedValue
    private int id;
    private String username;
    @Size(min = 10, message = "Minimum 10 characters allowed.")
    private String description;
    @Column(name="target_date")
    private LocalDate targetBy;
    private boolean done;

    public Todo(int id, String username, String description, LocalDate targetBy, boolean done) {
        super();
        this.id = id;
        this.username = username;
        this.description = description;
        this.targetBy = targetBy;
        this.done = done;
    }

    public Todo() {

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getTargetBy() {
        return targetBy;
    }

    public void setTargetBy(LocalDate targetBy) {
        this.targetBy = targetBy;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString(){
        return "Todo [id=" + id + ", username=" + username + ", description=" + description + ", target date=" + targetBy + ", done=" + done + "]";
    }
}

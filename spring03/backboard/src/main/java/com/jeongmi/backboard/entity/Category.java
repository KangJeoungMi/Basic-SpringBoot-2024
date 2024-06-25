package com.jeongmi.backboard.entity;

import java.time.LocalDateTime;

import org.springframework.data.annotation.CreatedDate;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer Id;


    @Column(length = 30)
    private String title;

    @CreatedDate
    @Column(name="createDate", updatable = false)
    private LocalDateTime crDateTime;

}

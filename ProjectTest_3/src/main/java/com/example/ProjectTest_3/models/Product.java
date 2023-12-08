package com.example.ProjectTest_3.models;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;


@Entity
@Table(name = "products")
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private Integer price;
    private String city;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime dateOfCreated;

    @PrePersist
    private void onCreate() { dateOfCreated = LocalDateTime.now(); }


}
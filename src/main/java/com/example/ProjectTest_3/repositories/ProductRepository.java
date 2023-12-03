package com.example.ProjectTest_3.repositories;

import com.example.ProjectTest_3.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);


}

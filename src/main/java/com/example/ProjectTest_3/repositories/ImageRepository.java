package com.example.ProjectTest_3.repositories;

import com.example.ProjectTest_3.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;



public interface ImageRepository extends JpaRepository<Image, Long> {
}

package com.example.ProjectTest_3.repositories;

import com.example.ProjectTest_3.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long>{
    User findByEmail(String email);
}

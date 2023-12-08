package com.example.ProjectTest_3.repositories;

import com.example.ProjectTest_3.models.ConfirmationToken;
import org.springframework.data.repository.CrudRepository;



public interface ConfirmationTokenRepository extends CrudRepository<ConfirmationToken, String> {
    ConfirmationToken findByConfirmationToken(String confirmationToken);
}

package com.movie.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.movie.model.Registration;

@Repository
public interface Registrationrepository extends JpaRepository<Registration, Integer> {

}

package com.movie.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.movie.model.Movieslist;

@Repository
public interface MovieslistRepository extends JpaRepository<Movieslist, Integer>{

	public List<Movieslist> findByNameContainingIgnoreCase(String name);

}

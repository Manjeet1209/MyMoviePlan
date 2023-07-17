package com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.movie.model.Movieslist;
import com.movie.model.Registration;
import com.movie.repository.MovieslistRepository;
import com.movie.repository.Registrationrepository;

@Service
public class Movieservice {
	@Autowired MovieslistRepository movielist;
	@Autowired Registrationrepository regis;

	 public List<Movieslist> getdata(){
		 List<Movieslist> list = movielist.findAll();
		 return list;
	 }
	 
	 public void add(Registration reg) {
		 regis.save(reg);
	 }
	 
	 public List<Registration> data() {
			List<Registration> list = regis.findAll();
			return list;
		}
	 
	 public List<Movieslist> findByNamesearch(String name){
		    return movielist.findByNameContainingIgnoreCase(name);
		
	 }
	 

}

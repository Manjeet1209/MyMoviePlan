package com.movie.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Movieslist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String language1;
	private String language2;
	private int price;
	
	public Movieslist() {
		
	}

	public Movieslist(int id, String name, String language1, String language2, int price) {
		super();
		this.id = id;
		this.name = name;
		this.language1 = language1;
		this.language2 = language2;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLanguage1() {
		return language1;
	}

	public void setLanguage1(String language1) {
		this.language1 = language1;
	}

	public String getLanguage2() {
		return language2;
	}

	public void setLanguage2(String language2) {
		this.language2 = language2;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Movieslist [id=" + id + ", name=" + name + ", language1=" + language1 + ", language2=" + language2
				+ ", price=" + price + "]";
	}

	
	
}

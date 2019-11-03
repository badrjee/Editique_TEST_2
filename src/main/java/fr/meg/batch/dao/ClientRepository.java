package fr.meg.batch.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.meg.batch.domain.Client;


public interface ClientRepository extends JpaRepository<Client, Integer> {
	
	

}

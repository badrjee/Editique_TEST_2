package fr.meg.batch.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import fr.meg.batch.dao.ClientRepository;
import fr.meg.batch.domain.Client;

public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientRepository repo;

	public void saveClient(Client c) {
		repo.save(c);
	}


	public Client getValidatedClient(int id) {
		Client result = new Client();
		Optional<Client> c = repo.findById(id);
		
		if(c.isPresent()) result =c.get();
		
		return result;
		
	}

	public List<Client> getAllClient() {
		
		return repo.findAll();
	}

	public void deleteClient(int id) {
		repo.deleteById(id);
		
	}


	
}

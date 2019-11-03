package fr.meg.batch.service;

import java.util.List;

import fr.meg.batch.domain.Client;

public interface ClientService {
	
	public void saveClient (Client c);
	
	public Client getValidatedClient(int id);
	
	public List<Client> getAllClient();

	public void deleteClient(int id);
	
	
}

package fr.meg.batch.presentation;

import java.util.List;

import fr.meg.batch.domain.Client;
import fr.meg.batch.service.ClientService;
import fr.meg.batch.service.ClientServiceImpl;

public class Vue {

	// implémentation de Client Service
	private ClientService service = new ClientServiceImpl();

	public void showClient(int id) {

		System.out.println(service.getValidatedClient(id));
	}

	public void createClient(String numCl, String nom, String prenom, String adress, String cp, String ville,
			String tel, String mail) {
		Client c = new Client();
		c.setNumCl(numCl);
		c.setNom(nom);
		c.setPrenom(prenom);
		c.setAdresse(adress);
		c.setCodePostal(cp);
		c.setVille(ville);
		c.setTelephone(tel);
		c.setMail(mail);
		service.saveClient(c);
	}

	public void showAllClients() {

		List<Client> list = service.getAllClient();

		for (Client cl : list) {
			System.out.println(cl);
		}
		;

	}

}

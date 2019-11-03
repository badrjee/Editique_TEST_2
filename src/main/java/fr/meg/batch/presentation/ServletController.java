package fr.meg.batch.presentation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import fr.meg.batch.domain.Client;
import fr.meg.batch.service.ClientService;

public class ServletController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LoggerFactory.getLogger(ServletController.class);

	@Autowired
	private ClientService clientService;

	@Override
	public void init() throws ServletException {
		final WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		ctx.getAutowireCapableBeanFactory().autowireBean(this);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LOGGER.debug("Passage dans doGet avec servletPath={}", request.getServletPath());
		final String view = request.getServletPath().replace(".html", "").split("/")[1];
		LOGGER.debug("Nom de vue d�termin� depuis servletPath -> {}", view);
		if (view != null && !view.isEmpty()) {
			String clientId = request.getParameter("clientId");
			
			switch (view) {
			case "show-all":
				request.setAttribute("clients", this.clientService.getAllClient());
				break;
			case "show-client":
				request.setAttribute("client", this.clientService.getValidatedClient(Integer.parseInt(clientId)));
			case "edit-client":
				request.setAttribute("client", this.clientService.getValidatedClient(Integer.parseInt(clientId)));
				break;
			}
			this.forwardToJsp(request, response, view);
		} else {
			LOGGER.debug("Aucun nom de vue valide, g�n�ration de l'erreur HTTP 405.");
			// Utilisation de super pour d�clencher un response.sendError(..),
			// voir le code soruce de HttpServlet.doGet(..).
			super.doGet(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		final String numCl = request.getParameter("numCl");
		final String nom = request.getParameter("nom");
		final String prenom = request.getParameter("prenom");
		final String adresse = request.getParameter("adresse");
		final String codePostal = request.getParameter("codePostal");
		final String ville = request.getParameter("ville");
		final String telephone = request.getParameter("telephone");
		final String mail = request.getParameter("mail");

		this.clientService.saveClient(new Client(numCl, nom, prenom, adresse, codePostal, ville, telephone, mail));
		response.sendRedirect(request.getContextPath() + "/show-all.html");
	}

	private void forwardToJsp(HttpServletRequest request, HttpServletResponse response, String view)
			throws ServletException, IOException {
		LOGGER.debug("Forward vers la JSP correspondante.");
		final String jspPath = "/WEB-INF/views/" + view + ".jsp";
		this.getServletContext().getRequestDispatcher(jspPath).forward(request, response);
	}

}

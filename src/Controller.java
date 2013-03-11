import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Civilizations;
import model.beans.Civilization;
import components.Configuration;
import components.DBConnector;
import components.Debug;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller(){
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Debug.log("Controller.doPost", "entered");

		/* What type of request is this? */
		String operation = request.getParameter(Configuration.getConfig(getServletContext(), "requestOperation"));
		String item = request.getParameter(Configuration.getConfig(getServletContext(), "requestItem"));

		/* Handle by item */
		if(item.equals(Configuration.getConfig(getServletContext(), "itemCivilization"))){

			/* Civilization */
			Debug.log("Controller.doPost", "item requested -> civ");

			/* Handle by operation */
			if(operation.equals(Configuration.getConfig(getServletContext(), "operationAdd"))){

				/* Add */
				Debug.log("Controller.doPost", "operation requested -> add");
				Civilizations.addCivilization(new Civilization(Civilization.AUTO, request.getParameter("name")),
						getDBConnection(request.getSession()));
			}
		}
	}

	private Connection getDBConnection(HttpSession session){
		Debug.log("Controller.getDBConnection", "entered");

		/* Get connection */
		Connection conn = null;
		synchronized(session){
			DBConnector dbcon = (DBConnector)session.getAttribute("dbcon"); // fetch an existing instance
			if(dbcon == null){ // if none found, create a new one
				Debug.log("Controller.getDBConnection", "creating a new dbConnector");
				
				dbcon = new DBConnector(Configuration.getConfig(getServletContext(), "database"));
				session.setAttribute("dbcon", dbcon);
			}
			conn = dbcon.getConnection();
		}
		return conn;
	}

}

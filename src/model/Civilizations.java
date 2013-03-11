package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.beans.Civilization;
import components.Debug;

public class Civilizations{

	public static boolean addCivilization(Civilization civ, Connection connection){
		Debug.log("Civilizations.addCivilization", "Adding " + civ);

		String query = "insert into Civilizations values (null, ?)";
		PreparedStatement statement;
		try{
			statement = connection.prepareStatement(query);
			statement.setString(1, civ.getName());
			statement.execute();
		}catch(SQLException e){
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public static Civilization[] getCivilizations(){
		Debug.log("Civilizations.getCivilizations", "Entered");
		/* TODO dummy */
		Civilization[] civs = new Civilization[2];
		civs[0] = new Civilization(1, "Civ1");
		civs[1] = new Civilization(2, "Civ2");
		return civs;
	}
}

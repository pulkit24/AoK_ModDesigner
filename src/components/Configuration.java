package components;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import javax.servlet.ServletContext;

public class Configuration{
	public static String getConfig(ServletContext context, String property){
		Properties configFile = new Properties();
		try{
//			configFile.load(new FileInputStream("config.properties"));
			configFile.load(context.getResourceAsStream("/WEB-INF/config.properties"));
			return configFile.getProperty(property);
		}catch(FileNotFoundException e){
			// TODO Auto-generated catch block
			System.err.println(e.toString());
		}catch(IOException e){
			// TODO Auto-generated catch block
			System.err.println(e.toString());
		}
		return null;
	}
}

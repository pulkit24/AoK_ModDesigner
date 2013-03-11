package components;

public class Debug{
	private static boolean isDebugOn = true;
	private static String separator = ":";

	public static void setDebugOn(){
		isDebugOn = true;
	}

	public static boolean log(String message){
		if(isDebugOn){
			System.out.println(message);
			return true;
		}else return false;
	}

	public static boolean log(String location, String message){
		return log(location+" "+separator+" "+message);
	}
	
	public static void setSeparator(String separator){
		Debug.separator = separator;
	}
}

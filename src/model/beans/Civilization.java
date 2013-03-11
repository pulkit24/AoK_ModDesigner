package model.beans;

public class Civilization{
	private int id;
	private String name;

	/* For auto incremented ids */
	public static int AUTO = -1;
	
	public Civilization(int id, String name){
		this.id = id;
		this.name = name;
	}
	
	public int getId(){
		return id;
	}

	public String getName(){
		return name;
	}

	public void setId(int id){
		this.id = id;
	}

	public void setName(String name){
		this.name = name;
	}

	public String toString(){
		return name;
	}
}

package model;

import java.io.Serializable;

public class CategoryBean implements Serializable{


	private String catName;
	private int catId;
	
	
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}

}

package kr.caracampleWeb.model;

public class ManagerVO {
	
	String managerID;
	String managerPW;
	String managerName;
	String managerEmail;
	
	public ManagerVO() {
	}
	public ManagerVO(String managerID, String managerPW, String managerName, 
			String managerEmail) {
		super();
		this.managerID = managerID;
		this.managerPW = managerPW;
		this.managerName = managerName;
		this.managerEmail = managerEmail;
	}
	public String getManagerID() {
		return managerID;
	}
	public void setManagerID(String managerID) {
		this.managerID = managerID;
	}
	public String getManagerPW() {
		return managerPW;
	}
	public void setManagerPW(String managerPW) {
		this.managerPW = managerPW;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerEmail() {
		return managerEmail;
	}
	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}
	@Override
	public String toString() {
		return "ManagerVO [managerID=" + managerID + ", managerPW=" + managerPW + ", managerName=" + managerName
				+ ", managerEmail=" + managerEmail + "]";
	}
	
	

}

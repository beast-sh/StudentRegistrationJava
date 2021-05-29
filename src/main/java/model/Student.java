package model;

import java.io.Serializable;

public class Student implements Serializable {

	 private static final long serialVersionUID = 1L;
	    private String firstName;
	    private String lastName;
	    private String USN;
	    private String course;
	    private String address;
	    private String contact;
	    public String getFirstName() {
	        return firstName;
	    }
	    public void setFirstName(String firstName) {
	        this.firstName = firstName;
	    }
	    public String getLastName() {
	        return lastName;
	    }
	    public void setLastName(String lastName) {
	        this.lastName = lastName;
	    }
	    public String getUSN() {
	        return USN;
	    }
	    public void setUSN(String USN) {
	        this.USN = USN;
	    }
	    public String getcourse() {
	        return course;
	    }
	    public void setcourse(String course) {
	        this.course = course;
	    }
	    public String getAddress() {
	        return address;
	    }
	    public void setAddress(String address) {
	        this.address = address;
	    }
	    public String getContact() {
	        return contact;
	    }
	    public void setContact(String contact) {
	        this.contact = contact;
	    }

}

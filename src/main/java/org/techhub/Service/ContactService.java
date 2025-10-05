package org.techhub.Service;

import java.util.List;

import org.techhub.Entity.ContactModel;

public interface ContactService {
		
	public String addContact(ContactModel contact);
	public List<ContactModel>getAllContact();
	public String deleteById(int id);
	public ContactModel getContactById(int id);
	public String updateContact(ContactModel contact);
}

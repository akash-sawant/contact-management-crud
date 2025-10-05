package org.techhub.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhub.Entity.ContactModel;
import org.techhub.Repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository repository;

	@Override
	public String addContact(ContactModel contact) {
		 repository.save(contact);
		 return "contact added Success...";
	}

	@Override
	public List<ContactModel> getAllContact() {
		return repository.findAll();
	}

	@Override
	public String deleteById(int id) {
		repository.deleteById(id);
		return "contact delete is Success...";
	}

	@Override
	public ContactModel getContactById(int id) {
		return repository.findById(id).get();
	}

	@Override
	public String updateContact(ContactModel contact) {
		repository.save(contact);
		return "";
	}

	
	
}

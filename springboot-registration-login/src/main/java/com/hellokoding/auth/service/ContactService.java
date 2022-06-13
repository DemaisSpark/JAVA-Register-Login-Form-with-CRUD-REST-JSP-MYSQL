package com.hellokoding.auth.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hellokoding.auth.model.Contact;
import com.hellokoding.auth.repository.ContactRepository;

@Service
public class ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	public List<Contact> findAll() {
	    return contactRepository.findAll();
	}
	
	public Optional<Contact> findById(Long id) {
	    return contactRepository.findById(id);
	}
	
	public Contact saveContact(Contact contact) {
	    return contactRepository.save(contact);
	}
	
	public void deleteById(Long id) {
	    contactRepository.deleteById(id);
	}
	
    public Contact updateContact(Long id, Contact contact) {
        Contact updatedContact = contactRepository.findById(id).orElse(null);
        updatedContact.setName(contact.getName());
        updatedContact.setEmail(contact.getEmail());
        updatedContact.setTelefone(contact.getTelefone());
        return contactRepository.save(updatedContact);
    }
}

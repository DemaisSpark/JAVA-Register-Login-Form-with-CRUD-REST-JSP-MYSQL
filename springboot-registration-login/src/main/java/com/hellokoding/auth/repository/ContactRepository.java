package com.hellokoding.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hellokoding.auth.model.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Long> {

}

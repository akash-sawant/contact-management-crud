package org.techhub.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.techhub.Entity.ContactModel;


public interface ContactRepository extends JpaRepository<ContactModel, Integer> {

}

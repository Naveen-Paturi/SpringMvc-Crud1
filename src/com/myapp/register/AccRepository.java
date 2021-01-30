package com.myapp.register;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


public interface AccRepository extends CrudRepository<AccRegistration, String> {
	
	@Query(value = "SELECT c FROM AccRegistration c WHERE c.username LIKE '%' || :keyword || '%'"
			+ " OR c.email LIKE '%' || :keyword || '%'"
			+ " OR c.phone LIKE '%' || :keyword || '%'")
	public List<AccRegistration> search(@Param("keyword") String keyword);
	


}

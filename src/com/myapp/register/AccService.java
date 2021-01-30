package com.myapp.register;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
@Transactional
public class AccService {

	@Autowired AccRepository repo;
	
	
	public void saveRegister(AccRegistration register) {
		
		repo.save(register);
	}
	
	
	public AccRegistration getCred(String phone) {
		return repo.findById(phone).get();
	}
	
	public List<AccRegistration> findall(){
		return (List<AccRegistration>)repo.findAll();
	}
	
	public void deleteRecord(String phone) {
		repo.deleteById(phone);
	}
	
	public List<AccRegistration> search(String keyword) {
		return repo.search(keyword);
	}
	
}

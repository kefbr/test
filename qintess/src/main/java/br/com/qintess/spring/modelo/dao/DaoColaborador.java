package br.com.qintess.spring.modelo.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.spring.modelo.entidades.Colaborador;

@Repository
public interface DaoColaborador extends CrudRepository<Colaborador, Integer> {
	
}

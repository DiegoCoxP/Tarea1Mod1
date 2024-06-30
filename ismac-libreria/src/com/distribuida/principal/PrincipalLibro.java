package com.distribuida.principal;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.distribuida.dao.LibroDAO;
import com.distribuida.entities.Libro;

public class PrincipalLibro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		LibroDAO libroDAO = context.getBean("libroDAOImpl", LibroDAO.class);
		
		// CRUD
		// add 
		Libro libro = new Libro();
		libroDAO.add(libro);
		
		// up
		Libro libro2 = new Libro( );
		libroDAO.up(libro2);
		
		//del
		libroDAO.del(73);
		// findOne
		//System.out.println("********** DEL **********"+libroDAO.findOne(49));
		try {System.out.println("********** DEL **********"+libroDAO.findOne(73)); } catch(Exception e) {e.printStackTrace();}
		
		// find All
		
		libroDAO.findAll().forEach(item -> {System.out.println(item.toString()); });
		
		
		context.close();
				
			

	}

}

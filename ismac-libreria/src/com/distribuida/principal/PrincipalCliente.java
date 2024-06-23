package com.distribuida.principal;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.dao.ClienteDAOImpl;
import com.distribuida.entities.Cliente;

public class PrincipalCliente {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Patron de IOC Inversión de Control
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		ClienteDAO clienteDAO = context.getBean("clienteDAOImpl", ClienteDAO.class);
		
		// CRUD
		// add 
		Cliente cliente = new Cliente(0,"0924578638", "Antonio", "Suarez","El Prado Sur","0998378508","antonsuarez@correoec.com");
		clienteDAO.add(cliente);
		
		// up
		Cliente cliente2 = new Cliente(40, "0924578638", "Eduardo", "Contreras","Circunvalacion norte","099852954","edcontreras@mailec.com" );
		clienteDAO.up(cliente2);
		
		//del
		clienteDAO.del(40);
		// findOne
		//System.out.println("********** DEL **********"+clienteDAO.findOne(39));
		try {System.out.println("********** DEL **********"+clienteDAO.findOne(40)); } catch(Exception e) {e.printStackTrace();}
		
		// find All
		
		clienteDAO.findAll().forEach(item -> {System.out.println(item.toString()); });
		
		
		context.close();
				
			

	}

}

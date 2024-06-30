package com.distribuida.principal;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.distribuida.dao.FacturaDAO;
import com.distribuida.dao.FacturaDetalleDAO;
import com.distribuida.entities.FacturaDetalle;

public class PrincipalFacturaDetalle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
				
ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		
		FacturaDetalleDAO facturaDetalleDAO = context.getBean("facturaDetalleDAOImpl", FacturaDetalleDAO.class);
		FacturaDAO facturaDAO = context.getBean("facturaDAOImpl", FacturaDAO.class);
		// CRUD
		
		// add
		FacturaDetalle facturaDetalle = new FacturaDetalle(0, 5, 20.5);
		facturaDetalle.setFactura(facturaDAO.findOne(2));
		facturaDetalleDAO.add(facturaDetalle);
		// up
		//FacturaDetalle facturaDetalle2 = new FacturaDetalle(207, 10, 50.5);
		//facturaDetalle2.setFactura(facturaDAO.findOne(3));
		//facturaDetalleDAO.up(facturaDetalle2);
		// del
		//facturaDetalleDAO.del(207);
		// findOne
		//try {System.out.println("*******DEL*********"+ facturaDetalleDAO.findOne(207));} catch(Exception e) {e.printStackTrace();}
		// findAll
		facturaDetalleDAO.findAll().forEach(item -> {System.out.println(item.toString());});
		
		context.close();

	}

}

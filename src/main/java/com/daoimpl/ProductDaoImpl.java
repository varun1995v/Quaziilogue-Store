package com.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductDao;
import com.model.Product;

@Repository(value = "productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		List<Product> products = session.createCriteria(Product.class).list();
		System.out.println(products);
		session.flush();
		session.close();
		return products;
	}

	public Product getProductById(String productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, productId);
		session.close();
		return product;
	}

	public void deleteProduct(String productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, productId);
		session.delete(product);
		session.flush();
		session.close();
	}

	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.save(product);
		session.close();
	}

	public void editProduct(Product product) {
		//the put request doesn't work. So I will delete old product and add new product
//		String id = product.getProductId();
//		this.deleteProduct(id);
//		product.setProductId(id);
//		this.addProduct(product);
		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(product);
		session.flush();
		session.close();
	}

}

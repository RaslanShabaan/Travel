package com.arch.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.arch.Entities.Offer;
import com.arch.Entities.Register;

@Transactional
@Component
public class OfferDaoImpl implements OfferDao{

	public List<Offer> list ;
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void AddOffer(Offer offer) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(offer);
        transaction.commit();
        session.flush(); //address will not get saved without this

	}

	@Override
	public Offer SelectOffer(int Id) {
 	    Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Offer offer= (Offer) session.createCriteria(Offer.class).add(Restrictions.eq("id", Id)).uniqueResult();
        transaction.commit();
        session.flush(); //address will not get saved without this
        		return offer;
	}

	@Override
	public void DeleteOffer(int Id) {

	      Session session = sessionFactory.openSession();
	      Transaction transaction = session.beginTransaction();

	      Query query = session.createQuery("delete from Offer where id:=id");
	      query.setParameter("id", Id);
	      query.executeUpdate();
	      transaction.commit();

	      session.flush(); //address will not get saved without this

	}

	@Override
	public void UpdateOffer(Offer offer) {
		
	    Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(offer);
        transaction.commit();

        session.flush(); //address will not get saved without this

	}

	@Override
	public List<Offer> AllOffers() {
		
		list=new ArrayList<Offer>();

	    Session session = sessionFactory.openSession();
	    Transaction transaction = session.beginTransaction();
	   
	   list= session.createCriteria(Offer.class).list();
	    transaction.commit();
	    session.flush(); //address will not get saved without this

			return list;
		}


}

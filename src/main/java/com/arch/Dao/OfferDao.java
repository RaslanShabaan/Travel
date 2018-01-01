package com.arch.Dao;

import java.util.List;

import com.arch.Entities.Offer;
import com.arch.Entities.Register;

public interface OfferDao {

	

	public void AddOffer(Offer offer);
	public Offer SelectOffer(int Id) ;
	public void DeleteOffer(int Id) ;
	public void UpdateOffer(Offer offer);
	public List<Offer> AllOffers() ;

}

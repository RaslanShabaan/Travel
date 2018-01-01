package com.arch.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.arch.Entities.Offer;

@Service
public class OfferService {
	
	@Autowired
	com.arch.Dao.OfferDao offerdao;
	
	public void AddOffer(Offer offer){
		offerdao.AddOffer(offer);
	}
	
	public Offer SelectOffer(int Id) {
	return	offerdao.SelectOffer(Id);
	}
	
	public void DeleteOffer(int Id) {
		offerdao.DeleteOffer(Id);
	}
	
	public void UpdateOffer(Offer offer){
		offerdao.UpdateOffer(offer);	
	}
	
	public List<Offer> AllOffers() {
	return	offerdao.AllOffers();	
	}

}

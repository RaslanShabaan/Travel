package com.arch.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arch.Service.OfferService;
import com.arch.Service.RegisterService;
import com.arch.Service.authoritiesService;
import com.arch.Service.usersService;


import com.arch.EncryptPassword;
import com.arch.Entities.*;
import com.arch.RandomV_Code.Random_Vcode;
import com.arch.SendMail.SendMail;

@Controller
public class WelcomeController {

	public static String Current_User;
	public static String Flight_Id;

	@Autowired
	RegisterService registerservice;

	@Autowired
	OfferService offerservice;


	@Autowired
	usersService usersservice;

	@Autowired
	authoritiesService authoritiesservice;

	
	///
//	private static String UPLOAD_FOLDER = "C://test//";

	private static String UPLOAD_FOLDER = "D://sts-bundle//Reso_WorkSpace//Travel//src//main//webapp//images//";
	
	@RequestMapping(value="/GoUpload",method=RequestMethod.GET)
	public ModelAndView GoUpload() {
		return new ModelAndView("upload");
	}
	
	
	@RequestMapping("/upload")
	public ModelAndView showUpload() {
		return new ModelAndView("upload");
	}

	
	@PostMapping("/upload")
	public ModelAndView fileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,
			@RequestParam("Description") String Description,@RequestParam("Country") String Country,
			@RequestParam("Days_Number") String Days_Number,	@RequestParam("Offer_Price") String Offer_Price) {

		
		if (file.isEmpty()) {
			return new ModelAndView("Index", "message", "Please select a file and try again");
		}

		try {
			// read and write the file to the selected location-
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

			String Pic_Name =file.getOriginalFilename() ;
			// insert new offer
			System.out.println(file.getOriginalFilename() +"------------------------");
			System.out.println("Country" + Country +"------------------------");
			System.out.println("price" + Offer_Price +"------------------------");
			System.out.println("descr" + Days_Number +"------------------------");
			System.out.println("days" + Description +"------------------------");
			System.out.println("user" + Current_User +"------------------------");
			
			Offer offer =new Offer();
		    offer.setCompany(Current_User);
		    offer.setCountry(Country);
		    offer.setDays(Days_Number);
		    offer.setDescription(Description);
		    offer.setPrice(Offer_Price);
            offer.setPicture(Pic_Name);
            
			offerservice.AddOffer(offer);
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return new ModelAndView("Index", "message", "File Uploaded sucessfully");
	}

///
	
	@RequestMapping(value = "/")
	public ModelAndView Home() {

		ModelAndView modelAndView = new ModelAndView("Index");

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Current_User = authentication.getName();

		return modelAndView;
	}

	@RequestMapping(value = "/Login")
	public ModelAndView Login(@RequestParam(name = "error", required = false) String error) {

		ModelAndView modelAndView = new ModelAndView("Login");
		if (error != null) {
			modelAndView.addObject("error", "Please Enter Correct Data :)");
		}
		return modelAndView;
	}

	// User Go To Register Page
	@RequestMapping(value = "/GoRegister", method = RequestMethod.GET)
	public ModelAndView GoRegister() {

		ModelAndView modelAndView = new ModelAndView("Register");
		return modelAndView;
	}

	// User Go To Register Page
	@RequestMapping(value = "/GoServices", method = RequestMethod.GET)
	public ModelAndView GoServices() {

		ModelAndView modelAndView = new ModelAndView("Map");
		return modelAndView;
	}


	// User Go To Register Page
	@RequestMapping(value = "/GoOffer", method = RequestMethod.GET)
	public ModelAndView GoOffer() {

		ModelAndView modelAndView = new ModelAndView("Offer");
		return modelAndView;
	}

	// User Go To Register Page
//	@RequestMapping(value = "/GoHome", method = RequestMethod.GET)
	//public ModelAndView GoHome() {
//
//		List<String> data =new ArrayList<String> ();		
//		List<Offer> f =new ArrayList<Offer> ();
//		f= offerservice.AllOffers();
//	
//		for (int t=0;t<f.size();t++){
//		data.add(f.get(t).getCompany());
//		data.add(f.get(t).getCountry());
//		data.add(f.get(t).getDays());
//		data.add(f.get(t).getDescription());
//        int ttt= f.get(t).getId();
//        String ggg=Integer.toString(ttt);
//        data.add(ggg);
//		data.add(f.get(t).getPicture());
//		data.add(f.get(t).getPrice());
//		
//		}
//		
//		////////////------ All Data ------ ////////////
//		System.out.println(data + "  ---------  " + data.size()/7);
//		
//		ModelAndView modelAndView = new ModelAndView("Index");
//		return modelAndView;
//	}

	@RequestMapping(value = "/GoService", method = RequestMethod.GET)
	public ModelAndView GoService() {

		ModelAndView modelAndView = new ModelAndView("Map");
		return modelAndView;
	}

	@RequestMapping(value = "/GoMap", method = RequestMethod.GET)
	public ModelAndView GoMap() {

		ModelAndView modelAndView = new ModelAndView("Map");
		return modelAndView;
	}
	

	@RequestMapping(value = "/GoOffers", method = RequestMethod.GET)
	public ModelAndView GoOffers(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("Offers");

		//
		List<String> data =new ArrayList<String> ();		
		List<Offer> f =new ArrayList<Offer> ();
		f= offerservice.AllOffers();
	
		for (int t=0;t<f.size();t++){
			
			int ttt= f.get(t).getId();
	        String ggg=Integer.toString(ttt);
	    data.add(ggg);   
		data.add(f.get(t).getCompany());
		data.add(f.get(t).getCountry());
		data.add(f.get(t).getDays());
		data.add(f.get(t).getDescription());
        data.add(f.get(t).getPicture());
		data.add(f.get(t).getPrice());
		
		}
		
		////////////------ All Data ------ ////////////
		System.out.println(data + "  ---------  " + data.size()/7);
session.setAttribute("Offers",data);
		
		
		return modelAndView;
	}
	@RequestMapping(value = "/GoWeather", method = RequestMethod.GET)
	public ModelAndView GoWeather() {

		ModelAndView modelAndView = new ModelAndView("Weather");
		return modelAndView;
	}

	///////////////////////////////////////////////////////////
	@RequestMapping(value = "/GoBook",method=RequestMethod.POST)
	public ModelAndView GoBook(@RequestParam("R") String R) {

		Flight_Id=R;
		System.out.println(" Flight Id Is : " +Flight_Id );
		
		ModelAndView modelAndView = new ModelAndView("Book");
		return modelAndView;
	}

	
	// User Register & Send Him Mail & Save Reg Data & users and auths DB
	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public ModelAndView Register(@RequestParam("Fname") String Fname, @RequestParam("Lname") String Lname,
			@RequestParam("Pass") String Pass, @RequestParam("Phone") String Phone ,@RequestParam("Email") String Email) {

		
		
		System.out.println(Fname  + " "+ Lname + " "+ Phone + " " + Email + " " + Pass);
		ModelAndView modelAndView = new ModelAndView("Login");

		Register register = new Register();
		users users = new users();
		authorities authorities = new authorities();

		SendMail sendmail = new SendMail();
		Random_Vcode Vcode = new Random_Vcode();
		String vcode = Vcode.Genetate();

		String Mail = sendmail.SendMail(Email, Fname, vcode);
        System.out.println("Mail Result ------ " + Mail);

		EncryptPassword E = new EncryptPassword();
		String Pss = E.Md5Password(Pass);
		System.out.println("Encription ------ " + Pss);

		
		if (Mail.equals("Doen")) {

			register.setEmail(Email);
			register.setFname(Fname);
			register.setPass(Pss);
			register.setPhone(Phone);
			register.setLname(Lname);
			
			registerservice.InsertRegister(register);

			users.setEnabled(0);
			users.setV_Code(vcode);
			users.setPassword(Pss);
			users.setUsername(Email);
			usersservice.Insert(users);

			authorities.setAuthority("ROLE_USER");
			authorities.setUsername(Email);
			authoritiesservice.Insertauthorities(authorities);

			
			modelAndView.addObject("Reg", " Your Registration Is Doen Check Your Mail For Verification Your Login :) ");

		} else {
			modelAndView.addObject("Reg", "Some Thing Went Wrong Please Try Later :)");

		}

		
		return modelAndView;
	}

	/////
		@RequestMapping(value = "/Reserve", method = RequestMethod.POST)
		public ModelAndView Reserve(@RequestParam("First_Name") String First_Name,@RequestParam("Last_Name") String  Last_Name,
				@RequestParam("Phone") String Phone ,@RequestParam("E_Mail") String E_Mail) {
			ModelAndView modelAndView = new ModelAndView("Map");
			
			System.out.println(First_Name + " " + Last_Name + " " + Phone + " " + E_Mail);
			System.out.println(Flight_Id + " ------------------------------------------");
			
			
			modelAndView.addObject("Reserve","Your Reserve Doen Well Go To Company Fot Tickets :) ");
			return modelAndView;
		}


	
	// return logout function
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public ModelAndView Logout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("Login");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		modelAndView.addObject("logout", "You Are Succesfully Loged Out :) ");
		System.out.println("-----------------------------");
		return modelAndView;
	}

	
	
	// Check V Code 
	@RequestMapping(value = "/Check")
	public ModelAndView Check(@RequestParam(value = "Vcode", required = false) String vcode) {

		ModelAndView modelAndView = new ModelAndView("Login");
		System.out.println(	vcode + "___________________________ ********************* _____________________________________");
	
		// update user enables status 
        users u =new users();
		u=usersservice.As(vcode);
if(u == null){
modelAndView.addObject("vcod","Mail Verhfication Doen Badlly You Can Not Log In Now Register First ... ");
}else{
	
	users ux =new users();
	ux.setEnabled(  1);
	ux.setPassword(	u.getPassword());
	ux.setUsername( u.getUsername());
	ux.setV_Code(   u.getV_Code());
	usersservice.Updatet(ux);

	modelAndView.addObject("vcod"," Mail Verhfication Doen Well You Can Log In Now ... ");
}
	
		return modelAndView;
	}

	
	// return Error function
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView Error() {
		ModelAndView modelAndView = new ModelAndView("404");
		return modelAndView;
	}
	
}
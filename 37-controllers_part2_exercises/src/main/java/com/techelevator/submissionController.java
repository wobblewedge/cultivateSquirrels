package com.techelevator;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Parameter;
import java.time.LocalDateTime;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Review;
import com.techelevator.model.ReviewDao;

@Controller
public class submissionController {
	@Autowired
	private ReviewDao reviewdao;

	@RequestMapping(path="/submitForm", method=RequestMethod.POST)
	public String processNotificationSignupSubmission(@RequestParam String username,
													 @RequestParam int rating,
													 @RequestParam String title,
													 @RequestParam String text
													 ) throws IOException{
		Review r = new Review();
		LocalDateTime reviewDate = LocalDateTime.now();
		r.setUsername(username);
		r.setRating(rating);
		r.setTitle(title);
		r.setText(text);
		r.setDateSubmitted(reviewDate);
		reviewdao.save(r);
		return "redirect:/homePage";
	}
			
	@RequestMapping(path="/homePage", method=RequestMethod.GET)
	public String viewReviews(HttpServletRequest request){
		
		request.setAttribute("reviews", reviewdao.getAllReviews());
		request.getParameter("review_date");
		return "/homePage";
	}
}

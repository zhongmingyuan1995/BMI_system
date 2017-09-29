package com.bmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WeightAction {
	@RequestMapping("/TestBmi.action")
	public String TestBmi(float height,float weight,String gender,Model model) throws Exception{		
		    //保存bmi小数后两位
		    java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.##");   
		    double bmi = Double.parseDouble(df.format(weight/((height/100)*(height/100))));
		    float bzweight;
		    String state = "";
		    if(bmi<18){
		    	state = "体重偏轻，加强营养";
		    }else if(bmi>=18 && bmi<25){
		    	state = "体重标准，请保持";
		    }else if(bmi>=25 && bmi<30){
		    	state = "超重，请加强锻炼";
		    }else{
		    	state = "肥胖，请加强锻炼,控制饮食";
		    }
		    if (gender == null || gender == ""){
		    	bzweight = Float.parseFloat("");
		    }else if(gender.equals("男")){
		    	bzweight = height-105;
		    }else{
		    	bzweight = height-100;
		    }
		    model.addAttribute("bzweight", bzweight);
		    model.addAttribute("bmi", bmi);
		    model.addAttribute("state", state);
			return "result";
	}
	//参数是对象
}

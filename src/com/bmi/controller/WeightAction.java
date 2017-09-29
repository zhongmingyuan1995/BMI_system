package com.bmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WeightAction {
	@RequestMapping("/TestBmi.action")
	public String TestBmi(float height,float weight,String gender,Model model) throws Exception{		
		    //����bmiС������λ
		    java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.##");   
		    double bmi = Double.parseDouble(df.format(weight/((height/100)*(height/100))));
		    float bzweight;
		    String state = "";
		    if(bmi<18){
		    	state = "����ƫ�ᣬ��ǿӪ��";
		    }else if(bmi>=18 && bmi<25){
		    	state = "���ر�׼���뱣��";
		    }else if(bmi>=25 && bmi<30){
		    	state = "���أ����ǿ����";
		    }else{
		    	state = "���֣����ǿ����,������ʳ";
		    }
		    if (gender == null || gender == ""){
		    	bzweight = Float.parseFloat("");
		    }else if(gender.equals("��")){
		    	bzweight = height-105;
		    }else{
		    	bzweight = height-100;
		    }
		    model.addAttribute("bzweight", bzweight);
		    model.addAttribute("bmi", bmi);
		    model.addAttribute("state", state);
			return "result";
	}
	//�����Ƕ���
}

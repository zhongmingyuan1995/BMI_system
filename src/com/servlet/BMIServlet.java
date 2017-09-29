package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BMIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BMIServlet() {
        super();     
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		float height = Integer.parseInt(request.getParameter("height"));	
		float weight = Integer.parseInt(request.getParameter("weight"));
	    String gender = request.getParameter("gender");
	    String state = "";
	    //保存bmi小数后两位位
	    java.text.DecimalFormat   df=new   java.text.DecimalFormat("#.##");   
	    double bmi = Double.parseDouble(df.format(weight/((height/100)*(height/100))));
	    float bzweight;
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
	    request.setAttribute("bmi",bmi);
	    request.setAttribute("state",state);
	    request.setAttribute("bzweight",bzweight);
	    request.getRequestDispatcher("result.jsp").forward(request,response);
	}
}

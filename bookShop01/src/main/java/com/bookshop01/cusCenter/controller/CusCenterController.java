package com.bookshop01.cusCenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//고객센터
public interface CusCenterController {

	//고객 아이디 가져오기
	//만약 로그인 안했다면 그냥 표시 x
	public ModelAndView orderIDInfo(@RequestParam("member_id") String order_id,
            HttpServletRequest request, HttpServletResponse response)  throws Exception; 
	

	

}

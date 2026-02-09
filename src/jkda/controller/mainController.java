package jkda.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import jkda.common.data.LIST_HELPER;
  

@Controller
public class mainController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Autowired
	private PublicationService publicationService;
    
    @RequestMapping("/test/hello.do")
	public String index2(Model model) throws Exception { 
    	System.out.println("테스트");
        return "hello";  
    }
    
    @RequestMapping(value = {"/", "/index.do"})
    public String home(HttpServletRequest request, Model model) throws Exception {
    	
    	LIST_HELPER listHelper = new LIST_HELPER(request, 8);
		listHelper = publicationService.getEbookColumnListHelper(listHelper);
		
		List<Map> imageList = listHelper.getList();
		System.out.println("=======================");
		if(imageList.size() > 0) {
			model.addAttribute("imagename", imageList.get(0).get("imagename"));
		}
        return "index"; // /WEB-INF/views/index.jsp �� ����Ű�� ViewResolver ����
    }
    
    @RequestMapping(value = {"/index2.do"})
    public String home2() {
        return "index2"; // /WEB-INF/views/index.jsp �� ����Ű�� ViewResolver ����
    }
}

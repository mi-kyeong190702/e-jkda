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
import jkda.utils.KdaStringUtil;
import jkda.controller.PublicationService;  
  

@Controller
public class firstController extends HttpServlet {
	
    private static final long serialVersionUID = 1L;
    public static final String FILE_BASE = "/upload/publication/";
     
	@Autowired
	private PublicationService publicationService;

    @RequestMapping("/kp_journal.do")
	public String kp_journal(Model model) throws Exception {  
        return "tiles:kp_journal";  
    } 
    
    @RequestMapping("/kp_journal_law01.do")
	public String kp_journal_law01(Model model) throws Exception {  
        return "tiles:kp_journal_law01";  
    } 
    @RequestMapping("/kp_journal_law02.do")
   	public String kp_journal_law02(Model model) throws Exception {  
           return "tiles:kp_journal_law02";  
       } 
    @RequestMapping("/kp_journal_law03.do")
   	public String kp_journal_law03(Model model) throws Exception {  
           return "tiles:kp_journal_law03";  
       } 
    @RequestMapping("/kp_journal_law04.do")
   	public String kp_journal_law04(Model model) throws Exception {  
           return "tiles:kp_journal_law04";  
       } 
    
    @RequestMapping("/kp_journal_search.do")
   	public String kp_journal_search(Model model) throws Exception {  
           return "tiles:kp_journal_search";  
       } 
    @RequestMapping("/kp_committee.do")
   	public String committee(Model model) throws Exception {  
           return "tiles:kp_committee";  
       } 
    
    @RequestMapping("/kp_thesis.do")
	public String kp_thesis(Model model) throws Exception {  
        return "tiles:kp_thesis";  
    }
    
    @RequestMapping("/kp_review.do")
	public String kp_review(Model model) throws Exception {  
        return "tiles:kp_review";  
    }
    
    @RequestMapping("/kp_menu.do")
	public String kp_menu(Model model) throws Exception {  
        return "tiles:kp_menu";  
    }
    
    /* E-Book 추가 */
	@RequestMapping("/kp_ebook_list.do")
	public String ebookmagazineList(HttpServletRequest request, Model model) throws Exception {
		LIST_HELPER listHelper = new LIST_HELPER(request, 8);
		listHelper = publicationService.getEbookColumnListHelper(listHelper);
		
		List<Map> imageList = listHelper.getList();
		//System.out.println("======================="+kdaColumn.getImagename());
		if(imageList.size() > 0) {
			model.addAttribute("imagename", imageList.get(0).get("imagename"));
		}
		
		model.addAttribute("listHelper", listHelper);
		model.addAttribute("FILE_BASE", FILE_BASE);
		return "tiles:kp_ebook_list";
	}
	
	 
	
	@RequestMapping("/kp_ebook_detail.do")
	public String kp_ebook_detail(Model model,HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		  
	        String u =  req.getParameter("u").replace("/web_app/ ", "");
	        System.out.println(u);
	        model.addAttribute("iframeSrc", u);
	        
	  return "kp_ebook_detail";
    } 
    
    @RequestMapping("ISS_GotoSearch.do")
	public String issGotoSearch() throws Exception {
		String strTemp1 = KdaStringUtil.getCurrentDateTimeAsString();

		int nowYear = Integer.parseInt(strTemp1.substring(0, 4));
		int nowMonth = Integer.parseInt(strTemp1.substring(4, 6));
		int nowDay = Integer.parseInt(strTemp1.substring(6, 8));
		int nowHour = Integer.parseInt(strTemp1.substring(8, 10));
		int nowMinute = Integer.parseInt(strTemp1.substring(10, 12));
		int nowSec = Integer.parseInt(strTemp1.substring(12, 14));

		strTemp1 = strTemp1.substring(2, 12);

		String strTemp2 = "";
		for (int intTemp1 = 1; intTemp1 <= strTemp1.length(); intTemp1++) {
			strTemp2 = strTemp1.substring(intTemp1 - 1, intTemp1) + strTemp2;
			if (intTemp1 == 1) {
				strTemp2 = Integer.toString(203 + (nowSec * nowMonth))+ strTemp2;
			}

			if (intTemp1 == 3) {
				strTemp2 = Integer.toString(189 + (nowDay * nowHour))+ strTemp2;
			}

			if (intTemp1 == 9) {
				strTemp2 = Integer.toString(187 + nowSec) + strTemp2;
			}
		}

		return "redirect:https://journal.kstudy.com/ISS_CreateSession.asp?encCode="
				+ strTemp2
				+ "&clientKey=5073&startPage=ISS_SForm&Session_Member=";
	}
    
    
}

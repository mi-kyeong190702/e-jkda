<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"			uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ taglib prefix="kda" 		uri="/WEB-INF/tld/kda.tld" %>
<%@ taglib prefix="kdaFunc" 	uri="/WEB-INF/tld/kda-func.tld" %>
<%@ taglib prefix="spring" 	uri="http://www.springframework.org/tags" %>
 
<div class="s_page">
	<div class="sp_head"> 
        <!-- 브레드크럼 -->
         <nav class="breadcrumb container" aria-label="Breadcrumb">
           <ol class="flex-row">
             <li><a href="/">HOME</a></li>
             <li class="sep">›</li>
             <li><a href="/kp_ebook_list.do">학술지 검색</a></li>
             <li class="sep">›</li>
             <li aria-current="page"><strong>e-Book 검색</strong></li>
           </ol>
         </nav>
    </div>  
		<div class="sp_body" style="margin-left: 100px;">
			<div class="area text s1 mt50">
	            <div class="box bw3 w400 h30 ac p10 center">
	                <p class="title bold t2 cm">대한영양사협회 학술지검색(e-Book)</p>
	            </div> 
	        </div>    
	         
             <!-- 190122modi --> 
             <div class="kp_journal_e">
	            <c:if test="${not empty imagename}">
				    <c:forTokens var="token" items="${imagename}" delims="/">
				        <c:set var="onlyFile" value="${token}" />
				    </c:forTokens>
				
				    <img src="https://www.dietitian.or.kr/upload/publication/sImage/${onlyFile}">
				</c:if>
              <!-- /images/publication/icon_journal_201901.png -->
             	<c:if test="${sessionScope.user_level == 1}">	
                 <p><a href="/kp_ebook_list_form.do"><img src="/images/btn_add_ebook.png" alt="등록하기"></a></p>
                 </c:if>
             </div>
	            
	                 <c:forEach items="${listHelper.list}" var="yyyy" > 
	                 	<c:if test="${yyyy.kda_mm == '1'}">
	                  	<h4 class="title bold t2 s1 i_b_t2">${yyyy.kda_yyyy}</h4>
	                   <div class="mb50">
						<ul class="area journal_tit center">
							<c:forEach items="${listHelper.list}" var="col">
								<c:if test="${yyyy.kda_yyyy == col.kda_yyyy}">
									<c:if test="${col.kda_yn == 'Y'}">
										<li>
			                                <div class="jnumber">
			                                	${col.kda_title}
			                                </div>
			                                <span>
			                                    <a href="javascript:void(0)" onclick="fn_detail('${col.kda_url}')" ><img style="padding-left: 15px;" src="/images/btn_journalebook_on.png" alt="e-BOOK보기" /></a>
			                                </span>
										</li>
									</c:if>
									<c:if test="${col.kda_yn == 'N'}">
										<li>
			                                <div class="jnumber">
			                                	 ${col.kda_title}
			                                </div>
			                                <span>
			                                     <img style="padding-left: 15px;" src="/images/btn_journalebook_off.png" alt="e-BOOK보기" />
			                                </span>
										</li>
									</c:if>
								</c:if>
						 	</c:forEach>
						</ul>
					</div>
				</c:if>
	                 </c:forEach>
	     <div class="center">
			<kda:paging listHelper="${listHelper}" />
			</div>
		    <!--// 190122modi -->
			
		</div>
	</div>
   <script type="text/javascript">
	 
   function fn_detail(url){
	   if(!url){ return; }
 
	   var f = document.createElement('form');
	   f.method = 'post';
	   f.action = '/kp_ebook_detail.do';     // 서블릿 매핑 URL
	   f.target = '_blank';          // ★ 새창/새탭으로 열기
	   var i = document.createElement('input');
	   i.type = 'hidden';
	   i.name = 'u';
	   i.value = url;
	   f.appendChild(i);
	   document.body.appendChild(f);
	   f.submit();
	   
   }
   
	 
	</script>
 
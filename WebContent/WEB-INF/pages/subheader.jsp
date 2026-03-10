<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"          uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ taglib prefix="kda"         uri="/WEB-INF/tld/kda.tld" %>
<%@ taglib prefix="kdaFunc"     uri="/WEB-INF/tld/kda-func.tld" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags" %>
 
<style>
.meta-list {
  margin: 5px;
  list-style-type: disc;         /* ● 도트 */
  color: #374151;
  font-size: 14px;
  line-height: 1.7;
}
</style>  

<div class="subhead-band">
    <div class="container subhead">
      <div class="cover-card">
        <span class="accent-bar"></span>
        <!-- <img src="/images/kp_journal_201606.jpg" alt="학술지 커버 미리보기" > -->
        <c:if test="${not empty imagename}">

		    <c:forTokens var="token" items="${imagename}" delims="/">
		        <c:set var="onlyFile" value="${token}" />
		    </c:forTokens>
		
		    <img src="https://www.dietitian.or.kr/upload/publication/sImage/${onlyFile}">
		
		</c:if>
      </div>
      
      <div>
	      <div class="journal-head" >
	        <h1 class="jh-title">
	          <span class="brand">대한영양사협회</span> 학술지
	        </h1>
	      </div>
	      <br>
	      <div class="journal-info">
	        <ul class="sh-list">
	          <li class="meta-list">저널명: 대한영양사협회학술지(Journal of the Korean Dietetic Association)</li>
	          <li class="meta-list">학술지 약어명: J Korean Diet Assoc</li>
	          <li class="meta-list">창간연도: 1995년</li>
	          <li class="meta-list">발행간기: 연 4회(2월, 5월, 8월, 11월)</li>
	          <li class="meta-list">사용언어: 한국어</li>
	          <li class="meta-list">pISSN: 1225-9861</li>
	          <li class="meta-list">eISSN: 2383-966X</li>
	          <li class="meta-list">DOI: 10.14373</li>
	          <li class="meta-list">목적: 식품·영양·급식 분야에서 영양사의 전문성과 업무능력 향상 및 직역확대에 기여할 수 있는 독창성을 갖춘 원고</li>
	          <li class="meta-list">범위: 연구논문(original article), 종설(review), 자료(report), 연구단보(research note)</li>
	          <li class="meta-list">전자 링크: <a class="underline-solid cm" href="https://e-jkda.or.kr" class="link cm" target="_blank">https://e-jkda.or.kr</a></li>
	          <li class="meta-list">등재 현황: <a href="https://www.kci.go.kr/kciportal/po/search/poInsiSearSoceView.kci?insiGeneInfoBean.insiId=INS000002588&insiGeneInfoBean.gubunCaseNo=7&isPop=N" target="_blank">한국학술지 인용색인(KCI)</a>, <a href="https://koreamed.org/search.php?id=127" target="_blank">대한의학학술지편집인협의회(KoreaMed)</a></li>
	        </ul>
	      </div>
         
      </div>
    </div>
</div>
  
  


  
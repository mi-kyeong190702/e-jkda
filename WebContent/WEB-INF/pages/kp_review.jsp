<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.meta-list {
  margin: 10px;
  list-style-type: disc;         /* ● 도트 */
  color: #374151;
  font-size: 14px;
  line-height: 1.7;
}
.meta-list li + li {
  margin-top: 4px;                /* 항목 간 간격 */
}

</style> 
<div class="s_page">
	<div class="sp_head"> 
		<!-- 브레드크럼 -->
		 <nav class="breadcrumb container" aria-label="Breadcrumb">
		   <ol class="flex-row">
		     <li><a href="/">HOME</a></li>
		     <li class="sep">›</li>
		     <li aria-current="page"><a href="/kp_journal.do">학술지 논문심사</a></li> 
		   </ol>
		 </nav>
	</div> 
	<div class="sp_body">
	
		<div class="area text s1 mt50">
            <div class="box bw3 w400 h30 ac p10 center">
                <p class="title bold t2 cm">학술지 논문심사</p>
		    </div> 
		</div> 
	    
	    <div class="box bga r10 mt30 p30" style="flex-direction: column;">
	          
             <h5 class="title bold i_b_t6" >논문심사 방법</h5>
             
             <div class="journal-info">
			  <p class="sh-lead"> 
			             대한영양사협회 학술지에 투고한 논문은 대한영양사협회 학술지 논문심사규정에 따라 심사를 진행한다. 
			  </p>
			  <ul class="sh-list">
			    <li class="meta-list">심사방법: 온라인논문투고·심사시스템
			    <a class="underline-solid cm" href="http://jkda.jams.or.kr" class="link cm" target="_blank">(http://jkda.jams.or.kr)</a> 회원가입 및 로그인 → 학술지 → 논문심사</li>
			  </ul>
			</div>
			<div class="area pt10 center">
			     <a class="btn t3 big" href="http://jkda.jams.or.kr" target="_blank" >온라인논문투고·심사시스템</a>
                 <a class="btn t3 big" href="/kp_journal_law02.do" >논문심사규정</a>
            </div>
        </div>
	 
		
	</div>
</div>

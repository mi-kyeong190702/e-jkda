<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta property="og:type" content="website"> 
    <meta property="og:title" content="대한영양사협회">
    <!-- 이미지 파일 교체 후 사용하세요, 카카오 og 캐시 삭제: https://developers.kakao.com/tool/debugger/sharing -->
    <meta property="og:image"  content="https://www.dietitian.or.kr/images/common/logo_kda.png">
    <meta property="og:description" content="대한영양사 협회 홈페이지">
    <meta property="og:site_name" content="대한영양사협회">
    <meta property="og:locale" content="ko_KR">
    <title>사단법인 대한영양사협회 학술지</title> 
    <link rel="stylesheet" href="/css/type1/reset.css">
    <link rel="stylesheet" href="/css/type1/utilities.css">
    <link rel="stylesheet" href="/css/type1/base.css">
    <link rel="stylesheet" href="/css/type1/layout.css">
    <link rel="stylesheet" href="/css/type1/components.css">
    <link rel="stylesheet" href="/css/type1/theme-dark.css"> 
    <link rel="stylesheet" href="/css/jquery.simplyscroll.css" media="all" type="text/css">
    <link rel="shortcut icon" href="/css/favicon.ico" />
 <style>
 
/* ===== 서브헤더 중앙 퀵바 ===== */
.subheader-quickbar {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 10px 16px;             /* 줄바꿈 시도 고려: 세로/가로 간격 */
  flex-wrap: wrap;            /* 화면 좁을 때 자동 줄바꿈 */
  padding: 8px 0;
  border-bottom: 1px solid var(--line, #e5e7eb); /* 구분선 */
  padding-bottom: 12px;  /* 선 위 여백 */
  margin-bottom: 16px;   /* 선 아래 여백 */
}

/* 구분자(›) */
.quick-chevron {
  color: #9ca3af;             /* 회색 */
  font-size: 18px;
  line-height: 1;
  user-select: none;
}

/* 버튼 기본(회색 채움형) */
.quick-item {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 8px 14px;
  border-radius: 10px;
  background: #4b5563;        /* gray-600 */
  border: 1px solid #4b5563;
  color: #fff;
  font-weight: 700;
  text-decoration: none;
  line-height: 1.1;
  transition: transform .15s ease, box-shadow .15s ease, background .15s ease, border-color .15s ease;
}
.quick-item:hover {
  background: #374151;        /* gray-700 */
  border-color: #374151;
  transform: translateY(-1px);
  box-shadow: 0 2px 8px rgba(2,8,20,.08);
}
.quick-item:focus {
  outline: 2px solid #cbd5e1; /* 포커스 링 */
  outline-offset: 2px;
}

/* (바로가기) 빨간 밑줄 텍스트 */
.quick-direct {
  font-weight: 700;
  font-size: 12px;
  color: #ef4444;             /* red-500 */
  text-decoration: underline;
  text-underline-offset: 2px;
}

/* 어두운 배경 위 가독성 보정 (선택) */
.quick-item .label { letter-spacing: -0.2px; }

/* 모바일에서 살짝 압축 */
@media (max-width: 520px) {
  .quick-item { padding: 7px 12px; }
  .quick-direct { font-size: 11px; }
}
</style>

<script>

</script>
</head>
<body>
<div id="wrap">   
  <!-- Header S-->
  <%@ include file ="./header.jsp"%>
  
  <!-- Header E--> 
   <%@ include file ="./menu.jsp"%>
   <%@ include file ="./subheader.jsp"%> 
   
   <main class="site-main">
      <div class="s_page">
      <!-- 
	   <div class="subheader-quickbar">
	      <a class="quick-item" href="https://www.dietitian.or.kr" target="_blank" rel="noopener">
	        <span class="label">대한영양사협회 홈페이지</span>
	        <span class="quick-direct">(바로가기)</span>
	      </a>
	    
	      <span class="quick-chevron">›</span>
	    
	      <a class="quick-item" href="https://jkda.jams.or.kr/" target="_blank" rel="noopener">
	        <span class="label">온라인 논문투고</span>
	        <span class="quick-direct">(바로가기)</span>
	      </a>
	    
	      <span class="quick-chevron">›</span>
	    
	      <a class="quick-item" href="https://jkda.jams.or.kr/" target="_blank" rel="noopener">
	        <span class="label">논문접수/심사</span>
	        <span class="quick-direct">(바로가기)</span>
	      </a>
	    </div>
	    --> 
	    <iframe width="100%" height="1700" scrolling="no" src="/ISS_GotoSearch.do" ></iframe>
	  </div>  
  </main>
  <!-- 사이드 퀵바 -->
  <nav class="quickbar" aria-label="빠른 메뉴" style="max-width: 240px;">
    <a class="quick-btn" href="https://jkda.jams.or.kr/" target="_blank" rel="noopener" aria-label="논문투고 새 창">
    <span class="qb-ico img1"></span>
    <span class="qb-label">논문투고</span>
    </a>

  <a class="quick-btn" href="https://jkda.jams.or.kr/" target="_blank" rel="noopener" aria-label="논문심사 새 창">
    <span class="qb-ico img2"></span>
    <span class="qb-label">논문심사</span>
  </a>

  <div class="quick-btn"  aria-label="학술지 문의 이메일">
    <span class="qb-ico img3"></span>
    <span class="qb-label">학술지 문의처<br/> kdabook@kdiet.or.kr</span>
  </div>

  <!-- SAFE: 링크나 위젯으로 교체 가능 -->
  <div  >
     <form  name = "koar_search_form"  method = "POST"  target = "koar_search_form" action = "" >
       <div style="background:#fff; border-radius: 5px; box-shadow: 0 1px 1px 0 #999, 0 1px 1px 0 transparent;padding: 10px 0 0 0; border:1px solid #e5e5e5;box-sizing:border-box;margin: 0 0 0 0;"  id="koar_journal_area">
         <h3 style="text-indent: -9999px; overflow: hidden; width:192px; height: 24px; background: url(https://safe.accesson.kr/images/api/safe_logo.png) no-repeat 0 0;    margin: 0 10px 12px 10px;box-sizing:border-box;">건전학술활동지원시스템</h3>
         <div style="box-sizing:border-box;margin: 0;padding: 0;">
           <ul style="box-sizing:border-box;margin: 0; padding: 0;  overflow: hidden;  background:#f1eeee url(https://safe.accesson.kr/images/api/safe_tab_line.png) repeat-x 0 bottom;">
             <li style=" box-sizing:border-box;float: left;   width: 50%;  list-style: none; margin: 0; padding: 0; position: relative;">
               <a href="javascript://" style=" box-sizing:border-box;display: block; text-align: center;   text-decoration: none; font-size: 12px; color: #919191;line-height: 36px; background:#fff url(https://safe.accesson.kr/images/api/safe_tab_on.png) repeat-x 0 top;color: #de7b11; border-right:1px solid #ddd;">학술지</a></li>
             <li style="box-sizing:border-box;float: left;width: 50%;  list-style: none; margin: 0; padding: 0; position: relative;">
               <a href="javascript://" onclick="document.querySelector('#koar_journal_area').style.display='none';document.querySelector('#koar_conference_area').style.display='';" style="box-sizing:border-box;display: block; text-align: center;   text-decoration: none; font-size: 12px; color: #919191; line-height: 36px;background:url(https://safe.accesson.kr/images/api/safe_shadow_r.png) no-repeat left 0;">부실 학술행사</a></li>
           </ul>
           <div style="padding: 17px 14px;margin:0;box-sizing:border-box;">
             <p style="box-sizing:border-box;margin: 0; padding: 2px 28px 0 6px; border:1px solid #d3d3d3; background: #fff; position:relative;  height: 28px; border-radius: 3px;">
             <input type="text" onkeypress="event.keyCode == 13?document.querySelector('#jsearch').onclick():''" name="jkeywords" title="검색" style="width: 100%;height: 20px; background: #fff;border:0px;" placeholder="ISSN, 출판사, 학술지명">
             <a href="javascript://" id="jsearch" onclick="document.querySelector('input[name=keywords]').value=document.querySelector('input[name=jkeywords]').value;document.querySelector('input[name=type]').value='J';document.querySelector('form[name=koar_search_form]').action='https://safe.accesson.kr/koar/api/searchForm.do';document.querySelector('form[name=koar_search_form]').submit()" style="box-sizing:border-box;position: absolute; right:0; top:0;  width: 26px;height: 26px;  text-indent: -9999px; overflow: hidden;  background: url(https://safe.accesson.kr/images/api/safe_search_icon.png) no-repeat 6px 5px; ">검색</a></p>
           </div>
         </div>
       </div>
       <div style="display: none; background:#fff; border-radius: 5px; box-shadow: 0 1px 1px 0 #999, 0 1px 1px 0 transparent;padding: 10px 0 0 0; border:1px solid #e5e5e5;box-sizing:border-box;margin: 0 0 0 0;" id="koar_conference_area">
         <h3 style="text-indent: -9999px; overflow: hidden; width:192px; height: 24px; background: url(https://safe.accesson.kr/images/api/safe_logo.png) no-repeat 0 0;    margin: 0 10px 12px 10px;box-sizing:border-box;">건전학술활동지원시스템</h3>
         <div style="box-sizing:border-box;margin: 0;padding: 0;">
           <ul style="box-sizing:border-box;margin: 0; padding: 0;  overflow: hidden;  background:#f1eeee url(https://safe.accesson.kr/images/api/safe_tab_line.png) repeat-x 0 bottom;">
             <li style="box-sizing:border-box;float: left;width: 50%;  list-style: none; margin: 0; padding: 0; position: relative;">
               <a href="javascript://" onclick="document.querySelector('#koar_journal_area').style.display='';document.querySelector('#koar_conference_area').style.display='none';" style="box-sizing:border-box;display: block; text-align: center;   text-decoration: none; font-size: 12px; color: #919191; line-height: 36px;background:url(https://safe.accesson.kr/images/api/safe_shadow_l.png) no-repeat right 0;">학술지</a></li>
             <li style=" box-sizing:border-box;float: left;   width: 50%;  list-style: none; margin: 0; padding: 0; position: relative;">
               <a href="javascript://" style=" box-sizing:border-box;display: block; text-align: center;   text-decoration: none; font-size: 12px; color: #919191;line-height: 36px; background:#fff url(https://safe.accesson.kr/images/api/safe_tab_on.png) repeat-x 0 top;color: #de7b11; border-right:1px solid #ddd;">부실 학술행사</a></li>
           </ul>
           <div style="padding: 17px 14px;margin:0;box-sizing:border-box;">
             <p style="box-sizing:border-box;margin: 0; padding: 2px 28px 0 6px; border:1px solid #d3d3d3; background: #fff; position:relative;  height: 28px; border-radius: 3px;">
             <input type="text" onkeypress="event.keyCode == 13?document.querySelector('#csearch').onclick():''" name="ckeywords" title="검색" style="width: 100%;height: 20px; background: #fff;border:0px;" placeholder="학술행사명">
               <a href="javascript://" id="csearch" onclick="document.querySelector('input[name=keywords]').value=document.querySelector('input[name=ckeywords]').value;document.querySelector('input[name=type]').value='C';document.querySelector('form[name=koar_search_form]').action='https://safe.accesson.kr/koar/api/searchForm.do';document.querySelector('form[name=koar_search_form]').submit()" style="box-sizing:border-box;position: absolute; right:0; top:0;  width: 26px;height: 26px;  text-indent: -9999px; overflow: hidden;  background: url(https://safe.accesson.kr/images/api/safe_search_icon.png) no-repeat 6px 5px; ">검색</a></p>
           </div>
         </div>
       </div>
       <input type = "hidden"  name="keywords"  value="" />
       <input type = "hidden"  name="type"  value="" />
       <input type = "hidden"  name="code"  value="DrAdFdKfMy"/>
     </form>
  </div> 
</nav>
  
   
   <%@ include file ="./footer.jsp"%>
</div>

<style>
/* 사이드 퀵바: PC 우측 고정 */
.quickbar{
  position: fixed;
  right: clamp(12px, 2vw, 14px);
  top: 200px;                           /* 헤더 높이에 맞춰 조절 */
  display: flex;
  flex-direction: column;
  gap: 5px;
  background: white;
  z-index: 999;
}

/* 버튼 공통 */
.quick-btn{
  --qb-border: #e5e7eb;
  --qb-bg: #ffffff;
  --qb-bg-hover: #f1f6ff;
  --qb-ink: #0f172a;
  --qb-brand: #2563eb;

  display: grid;
  grid-template-columns: 40px 1fr;
  align-items: center;
  gap: 10px;
  min-width: 140px;
  padding: 5px 5px;
  background: var(--qb-bg);
  color: var(--qb-ink);
  text-decoration: none;
  border: 1px solid var(--qb-border);
  border-radius: 12px;
  box-shadow: 0 1px 2px rgba(16,24,40,.06);
  cursor: pointer;
  transition: transform .08s ease, box-shadow .12s ease, background .12s ease, border-color .12s ease;
}
.quick-btn:hover,
.quick-btn:focus-visible{
  background: var(--qb-bg-hover);
  border-color: rgba(37,99,235,.35);
  box-shadow: 0 4px 12px rgba(37,99,235,.18);
  transform: translateY(-1px);
  outline: none;
}

/* 아이콘: 원형 */
.qb-ico{
  width: 40px; height: 40px;
  border-radius: 999px;
  display: grid; place-items: center;
  background: #eaf1ff;
  color: var(--qb-brand);
  font-weight: 800; font-size: 14px;
  border: 1px solid rgba(37,99,235,.2);
}

.qb-ico.img1 { background-image: url(/images/icon1.png); background-size: cover; }
.qb-ico.img2 { background-image: url(/images/icon2.png); background-size: cover; }
.qb-ico.img3 { background-image: url(/images/icon3.png); background-size: cover; }

/* 라벨 */
.qb-label{
  font-weight: 700;
  letter-spacing: .1px;
  font-size: 14px;
  white-space: nowrap;
}

/* TOP 버튼만 살짝 다르게(선택) */
.qb-top .qb-ico{ background:#eef2ff; }


/* 반응형: 992px 이하에서는 하단 바로 전환 */
@media (max-width: 992px){
  .quickbar{
    top: auto; bottom: 14px; right: 14p
    


</style>

</body>
</html>
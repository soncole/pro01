<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 인성정보</title>
    <!-- 문서 정보 등록 -->
    <!-- 검색엔진최적화(Search Engine Optimization) : SEO -->
    <meta name="subject" content="인성정보 벤치마킹 사이트">
    <meta name="keywords" content="인성정보 IT, 솔루션, 네트워크, 보안">
    <meta name="description" content="종합 IT 서비스 기업. 헬스케어, 클라우드 기반 인공지능 컨택센터, 매니지드 서비스, 가상화, 네트워크, 서버, 스토리지.
    ">
    <meta name="author" content="soncole">

    <link rel="shortcut icon" href="./images/favicon.ico">

    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 인성정보">
    <meta name="og:description" content="종합 IT 서비스 기업. 헬스케어, 클라우드 기반 인공지능 컨택센터, 매니지드 서비스, 가상화, 네트워크, 서버, 스토리지.">
    <meta name="og:url" content="https://soncole.github.io/web1">
    <meta name="og:image" content="./images/thumbnail.jpg">  
          

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="sub_common.css">
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - CJ프레시웨이">
    <meta name="og:description" content="CJ프레시웨이는 좋은 식자재를 유통하며, 건강하고 맛있는 식문화를 창출하는 대한민국 최고의 글로벌 식자재 유통 및 푸드서비스 전문 기업입니다.">
    <meta name="og:url" content="https://okgunyang.github.io/web1">
    <meta name="og:image" content="images/thumbnail.jpg">  
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="main.css">
    <style>
    .vs { height:40vh; }
    .content { background-image: url("./images/subTopBg_03.jpg"); background-position: 0 -100px; }
    #page1 .page_tit { padding-top: 60px; }
     .table { width:680px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
    td { padding-top:10px; padding-bottom: 10px; }
    th:after {  content: "";  display: inline-block;  width: 100%; }
    th:before {  content: "";  display: inline-block;  width: 100%; }
    .lb { display:block;  font-size:20px; }
    .indata { display:block; width:400px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #00b7ea 0%, #009ec3 100%); 
        background: -webkit-linear-gradient(top, #00b7ea 0%,#009ec3 100%); 
        background: linear-gradient(to bottom, #00b7ea 0%,#009ec3 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
        background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#6d0019 100%); 
        background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#6d0019 100%);
        color:#fff;
    }
    .page_tit { text-align:center; font-size:32px; }
    </style>
</head>
<body>
    <div class="container">
        <%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">JOIN</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">회원가입</h2>
                <div class="page_wrap">
					<form name="join form" action="joinpro.jsp" method="post">
						<table class="table" id="tb1">
							<tbody>
								<tr>
									<th><label for="id" class="lb">아이디</label></th>
									<td><input type="text" name="id" id="id" class="indata" pattern="^[a-z0-9]{3, 18}" required autofocus>
										<input type="button" name="id_ck" id="id_ck" value="아이디 중복 확인" onclick="idCheck()" class="btn btn-primary">
										<div id="msg"></div>
									</td>
								</tr>
								<tr>
									<th><label for="pw" class="lb">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4, 16}$" required></td>
								</tr>
								<tr>
									<th><label for="pw2" class="lb">비밀번호 확인</label></th>
									<td><input type="password" name="pw2" id="pw2" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4, 16}$" required></td>
								</tr>
								<tr>
									<th><label for="name" class="lb">성명</label></th>
									<td><input type="text" name="name" id="name" class="indata" pattern="^[가-힣A-Za-z]{2, 12}$" required></td>
								</tr>
								<tr>
									<th><label for="address" class="lb">주소</label></th>
									<td><input type="text" name="address" id="address" class="indata" maxlength="50" required></td>
								</tr>
								<tr>
									<th><label for="tel" class="lb">연락처</label></th>
									<td><input type="tel" name="tel" id="tel" class="indata" pattern="^[\d]{2, 3}-[\d]{3, 4}-[\d]{4}" required></td>
								</tr>
								<tr>
									<th><label for="email" class="lb">이메일</label></th>
									<td><input type="email" name="email" id="email" class="indata" maxlength="30" required></td>
								</tr>
								<tr>
									<td colspan="2" style="text-align:center;">
									<input type="submit" value="회원가입" class="btn btn-primary">&nbsp;&nbsp;&nbsp;
									<input type="reset" value="취소" class="btn btn-cancel">
								<tr>
							</tbody>
						</table>
					</form>
					<script>
					function idCheck(){
						var id = document.getElementById("id");
						if(id.value!=""){
							window.open("idCheck.jsp?id="+id.value, "아이디 중복 검사","width=400, height=300")
						} else{
							alert("아이디를 입력해주세요.");
							id.focus();
							return;
						}
					}
					function form_check(f){
						if(f.pw.value!=f.pw2.value){
							alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
							return false;
						}
						if(f.id_ck.value != "yes"){
							alert("아이디 중복체크가 완료되지 않았습니다.");
							return false;
						}
					}
					</script>
                </div>
            </section>
       	</div>
     <%@ include file="./footer.jsp" %>
     </div>
</body>
</html>
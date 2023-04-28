<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String wid = (String) session.getAttribute("id");
	String wpw = "";
	String wname = "";
	String tel = "";
	String email = "";
	String address = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member where id=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, wid);
				rs = pstmt.executeQuery();
				if(rs.next()){
					wpw = rs.getString("pw");
					wname = rs.getString("name");
					tel = rs.getString("tel");
					email = rs.getString("email");
					address = rs.getString("address");
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 전송 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>
<!DOCTYPE html>
<html>
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
    .page { height:auto; }
   	.grp_textarea { width:1000px; margin:20px auto; }
   	.cate_tit { padding-top:20px; text-align:center; font-size:28px; padding-bottom:8px;	}
   	.grp_textarea textarea { display:block; width:820px; margin:5px auto; padding:24px;
   	color:#000; }
   	.btn_fr { text-align:center; min-height:80px; width:1000px; margin:8px auto; 
   	font-size:20px; }
</style>
</head>
<body>
    <div class="container">
		<%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">My Page</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">MY PAGE</h2>
                <div class="page_wrap">
					<table class="table">
						<tbody>
							<tr>
								<th>아이디</th><td><%=wid %></td>
							</tr>
							<tr>
								<th>비밀번호</th><td><%=wpw %></td>
							</tr>
							<tr>
								<th>이름</th><td><%=wname %></td>
							</tr>
							<tr>
								<th>전화번호</th><td><%=tel %></td>
							</tr>
							<tr>
								<th>이메일</th><td><%=email %></td>
							</tr>
							<tr>
								<th>주소</th><td><%=address %></td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="member_mod.jsp?id=<%=wid %>" class="btn btn-primary">정보 수정</a> &nbsp; &nbsp; &nbsp; &nbsp;
									<a href="member_del.jsp?id=<%=wid %>" class="btn btn-cancle">회원탈퇴</a>
								</td>
							</tr>
						</tbody>
					</table>

                </div>
            </section>
        </div>
        <%@ include file="./footer.jsp" %>
    </div>
</body>
</html>
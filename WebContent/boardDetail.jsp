<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String pid = "";
	if(session.getAttribute("id")!=null){
		pid = (String) session.getAttribute("id");
	}
	String path = request.getContextPath();
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro01";
	String user = "postgres";
	String pass = "1234";
	String bno = request.getParameter("bno");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String compId = "";
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select board.bno as bno, board.title as title, board.content as content, member.name as name, board.resdate as resdate, board.author as author from board, member where board.author=member.id and board.bno=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bno);
				rs = pstmt.executeQuery();	
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
          
    <!-- 기본 폰트 및 초기화 로딩 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 스타일 초기화 -->
    <!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="./common.css">
    <link rel="stylesheet" href="./main.css">
    <link rel="stylesheet" href="./sub_common.css">
<style>
   .vs { height:40vh; }
    .content { background-image: url("../images/top_career.jpg"); }
	table { display:table; width:700px; margin:10px auto; 
	border-bottom:1px solid #333; 
	border-collapse:collapse; }
	tr { display:table-row; }
	th, td { display:table-cell; border-top:1px solid #333;
	text-align:center; line-height:36px; padding-top:16px; padding-bottom:16px; }
	th { background-color:#076891; color:#fff; width:100px; height:20px; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #00b7ea 0%, #009ec3 100%); 
        background: -webkit-linear-gradient(top, #00b7ea 0%,#009ec3 100%); 
        background: linear-gradient(to bottom, #00b7ea 0%,#009ec3 100%); color:#fff; }
    .btn-cancel { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
        background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#6d0019 100%); 
        background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#6d0019 100%);
        color:#fff;
    }
    .page_tit { text-align:center; font-size:32px; padding-top:60px; padding-bottom:16px; }
    tbody { height:700px; }
</style>
</head>
<body>
    <div class="container">
		<%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">NEWS</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">공지사항 상세보기</h2>
				<table>
					<tbody>
<%
						if(rs.next()){
							compId = rs.getString("author");
%>					
						<tr>
							<th>글 번호</th>
							<td><%=rs.getString("bno") %></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><%=rs.getString("title") %></td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<p><%=rs.getString("content") %></p>
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>
								<p><%=rs.getString("name") %></p>
							</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td>
								<p><%=rs.getString("resdate") %></p>
							</td>
						</tr>
<%
						}
%>
						<tr>
							<td colspan="2">
								<a href="<%=path %>/news.jsp#page4" class="btn btn-primary">글 목록</a> &nbsp; &nbsp; &nbsp;
<%
							if(pid.equals(compId) || pid.equals("admin")){
%>
								<a href="<%=path %>/boardUpdate.jsp?bno=<%=bno %>" class="btn btn-cancel">글 수정</a>								
								<a href="<%=path %>/boardDel.jsp?bno=<%=bno %>" class="btn btn-primary">삭제</a>
<%
							}
%>							
							</td>
						</tr>
					</tbody>
					
				</table>
			</section>
		</div>
        <%@ include file="./footer.jsp" %>
	</div>
</body>
<%
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
</html>
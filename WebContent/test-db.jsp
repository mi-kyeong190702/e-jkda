<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.naming.*, javax.sql.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>데이터베이스 연결 테스트</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .success { color: green; background: #e8f5e9; padding: 15px; border-radius: 5px; }
        .error { color: red; background: #ffebee; padding: 15px; border-radius: 5px; }
        pre { background: #f5f5f5; padding: 10px; overflow: auto; }
        h1 { color: #333; }
        .info { background: #e3f2fd; padding: 10px; margin: 10px 0; border-left: 4px solid #2196F3; }
    </style>
</head>
<body>
    <h1>🔍 데이터베이스 연결 테스트</h1>
    
    <%
    try {
        // JNDI 컨텍스트 초기화
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        
        out.println("<div class='info'>");
        out.println("<strong>1단계: JNDI 컨텍스트 조회</strong><br>");
        out.println("✓ JNDI 컨텍스트 초기화 성공<br>");
        
        // 데이터소스 조회
        DataSource ds = (DataSource) envCtx.lookup("jdbc/dataSource1");
        out.println("✓ 데이터소스(jdbc/dataSource1) 조회 성공<br>");
        out.println("</div>");
        
        // 연결 시도
        out.println("<div class='info'>");
        out.println("<strong>2단계: 데이터베이스 연결</strong><br>");
        Connection conn = ds.getConnection();
        out.println("✓ 데이터베이스 연결 성공!<br>");
        out.println("</div>");
        
        // 메타데이터 조회
        DatabaseMetaData metaData = conn.getMetaData();
        
        out.println("<div class='success'>");
        out.println("<h2>✅ 데이터베이스 연결 성공!</h2>");
        out.println("<strong>연결 정보:</strong><br>");
        out.println("<ul>");
        out.println("<li><strong>DB 제품:</strong> " + metaData.getDatabaseProductName() + "</li>");
        out.println("<li><strong>DB 버전:</strong> " + metaData.getDatabaseProductVersion() + "</li>");
        out.println("<li><strong>드라이버:</strong> " + metaData.getDriverName() + "</li>");
        out.println("<li><strong>드라이버 버전:</strong> " + metaData.getDriverVersion() + "</li>");
        out.println("<li><strong>URL:</strong> " + metaData.getURL() + "</li>");
        out.println("<li><strong>사용자:</strong> " + metaData.getUserName() + "</li>");
        out.println("</ul>");
        out.println("</div>");
        
        // 간단한 쿼리 테스트
        out.println("<div class='info'>");
        out.println("<strong>3단계: 쿼리 실행 테스트</strong><br>");
        
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT 1 AS test");
        
        if (rs.next()) {
            out.println("✓ 쿼리 실행 성공 (결과: " + rs.getInt("test") + ")<br>");
        }
        rs.close();
        stmt.close();
        out.println("</div>");
        
        // Tbl_KDA_COLUMN 테이블 테스트
        try {
            out.println("<div class='info'>");
            out.println("<strong>4단계: Tbl_KDA_COLUMN 테이블 조회</strong><br>");
            
            Statement stmt2 = conn.createStatement();
            ResultSet rs2 = stmt2.executeQuery("SELECT COUNT(*) AS cnt FROM Tbl_KDA_COLUMN");
            
            if (rs2.next()) {
                int count = rs2.getInt("cnt");
                out.println("✓ Tbl_KDA_COLUMN 테이블 존재<br>");
                out.println("✓ 레코드 수: " + count + "개<br>");
            }
            rs2.close();
            stmt2.close();
            out.println("</div>");
            
            // EBOOK 데이터 조회
            if (rs2.getInt("cnt") > 0) {
                out.println("<div class='info'>");
                out.println("<strong>5단계: EBOOK 데이터 조회</strong><br>");
                
                Statement stmt3 = conn.createStatement();
                ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) AS cnt FROM Tbl_KDA_COLUMN WHERE kda_code = 'EBOOK'");
                
                if (rs3.next()) {
                    int ebookCount = rs3.getInt("cnt");
                    out.println("✓ EBOOK 레코드 수: " + ebookCount + "개<br>");
                }
                rs3.close();
                stmt3.close();
                out.println("</div>");
            }
            
        } catch (SQLException e) {
            out.println("<div class='error'>");
            out.println("⚠️ Tbl_KDA_COLUMN 테이블이 없습니다.<br>");
            out.println("sql/schema.sql을 실행하여 테이블을 생성하세요.<br>");
            out.println("오류: " + e.getMessage());
            out.println("</div>");
        }
        
        conn.close();
        
        out.println("<div class='success'>");
        out.println("<h3>🎉 모든 테스트 통과!</h3>");
        out.println("<p>이제 웹 애플리케이션이 정상적으로 작동할 것입니다.</p>");
        out.println("</div>");
        
    } catch(NamingException e) {
        out.println("<div class='error'>");
        out.println("<h2>❌ JNDI 조회 실패</h2>");
        out.println("<p>context.xml 설정을 확인하세요.</p>");
        out.println("<strong>오류:</strong> " + e.getMessage() + "<br><br>");
        out.println("<strong>확인 사항:</strong>");
        out.println("<ul>");
        out.println("<li>WebContent/META-INF/context.xml 파일이 존재하는가?</li>");
        out.println("<li>Resource name이 'jdbc/dataSource1'로 설정되어 있는가?</li>");
        out.println("<li>Tomcat 서버를 재시작 했는가?</li>");
        out.println("</ul>");
        out.println("<strong>상세 오류:</strong>");
        out.println("<pre>");
        e.printStackTrace(new java.io.PrintWriter(out));
        out.println("</pre>");
        out.println("</div>");
        
    } catch(SQLException e) {
        out.println("<div class='error'>");
        out.println("<h2>❌ 데이터베이스 연결 실패</h2>");
        out.println("<p>데이터베이스 연결 정보를 확인하세요.</p>");
        out.println("<strong>오류:</strong> " + e.getMessage() + "<br><br>");
        out.println("<strong>확인 사항:</strong>");
        out.println("<ul>");
        out.println("<li>데이터베이스 서버가 실행 중인가?</li>");
        out.println("<li>context.xml의 URL, username, password가 정확한가?</li>");
        out.println("<li>JDBC 드라이버 JAR 파일이 WEB-INF/lib/에 있는가?</li>");
        out.println("<li>방화벽에서 포트(MSSQL:1433, MySQL:3306)가 열려있는가?</li>");
        out.println("</ul>");
        out.println("<strong>상세 오류:</strong>");
        out.println("<pre>");
        e.printStackTrace(new java.io.PrintWriter(out));
        out.println("</pre>");
        out.println("</div>");
        
    } catch(Exception e) {
        out.println("<div class='error'>");
        out.println("<h2>❌ 예상치 못한 오류</h2>");
        out.println("<strong>오류:</strong> " + e.getMessage());
        out.println("<pre>");
        e.printStackTrace(new java.io.PrintWriter(out));
        out.println("</pre>");
        out.println("</div>");
    }
    %>
    
    <hr>
    <p><a href="javascript:history.back()">← 뒤로 가기</a> | <a href="javascript:location.reload()">🔄 새로고침</a></p>
    
</body>
</html>



<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
   String cp = request.getContextPath();
// String path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+cp;
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>크라우드 펀딩</title>
    <link rel="stylesheet" href="<%=cp %>/resource/css/reset.css" />
    <link rel="stylesheet" href="<%=cp %>/resource/css/layout.css" />
    <link rel="stylesheet" href="<%=cp %>/resource/css/detail.css" />
    <link rel="stylesheet" href="<%=cp %>/resource/css/content.css" />
    <link rel="stylesheet" href="<%=cp %>/resource/css/common.css" />
    <link rel="stylesheet" href="<%=cp %>/resource/css/awards/awards.css" />
    <!--[if lt IE 9]>
      <script src="<%=cp%>/resource/js//html5shiv.min.js"></script>
    <![endif]-->
    <script src="<%=cp %>/resource/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    	$(function(){
	    	$("body").on("click", ".awardsItem", function(e){
	    		const projectNo = $(this).data("project-no");
	    		const brandNo = $(this).data("brand-no");
	    		console.log(projectNo, brandNo, "ddd");
	    		if(projectNo){
	    			location.href="<%=cp%>/detail/"+projectNo;
	    		}else if(brandNo){
	    			location.href="<%=cp%>/brand/"+brandNo;
	    		}
	    	});
    	});
    </script>
  </head>
  <body>
    <div id="wrap">
      <tiles:insertAttribute name="headerBanner" ignore="true"/>
      <tiles:insertAttribute name="header"/>
      <main id="content">
        <div class="contentWrapper">
          <tiles:insertAttribute name="content" />
        </div>
      </main>
      <tiles:insertAttribute name="footer" />
    </div>
  </body>
</html>

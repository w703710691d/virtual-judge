<%@ include file="/contextPath.jsp" %>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<%--
<link rel="stylesheet" type="text/css" href="${contextPath}/css/global.css?<%=application.getAttribute("version")%>" />
<script type="text/javascript" src="${contextPath}/javascript/shared/__jquery-2.1.1.min.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/jquery-ui-1.11.1.custom/jquery-ui.min.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_base64.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_common.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_engine.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_facebox.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_jquery.ba-hashchange.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_jquery.cookie.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_jquery.dataTables.min.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_jquery.quicksand.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_jquery.scrollTo.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/_sh_main.min.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/dataTables.jqueryui.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/javascript/shared/cssmenu.js?<%=application.getAttribute("version")%>"></script>
--%>

<link rel="shortcut icon" href="${contextPath}/images/logo.ico" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/style.min.css?<%=application.getAttribute("version")%>" />
<script type="text/javascript">var basePath = "${contextPath}";</script>
<script type="text/javascript" src="${contextPath}/javascript/min/script.min.js?<%=application.getAttribute("version")%>"></script>
<script type="text/javascript" src="${contextPath}/dwr/interface/judgeService.js"></script>
<script type='text/javascript' src="${contextPath}/dwr/util.js"></script>
<!--
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    <s:if test="#session.visitor != null">
        ga('create', '<s:property value="#application.gaId" />', { 'userId': '<s:property value="#session.visitor.username" />' });
    </s:if>
    <s:else>
        ga('create', '<s:property value="#application.gaId" />', 'auto');
    </s:else>
	ga('send', 'pageview');
</script>
-->

<script type="text/x-mathjax-config" id="mathJaxConfigSricpt">MathJax.Hub.Config({tex2jax:{inlineMath:[['$','$'],['\\(','\\)'],['$$$','$$$']],displayMath:[['$$','$$'],["\\[","\\]"],['$$$$$$','$$$$$$']]}});</script>

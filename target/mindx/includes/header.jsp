<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>MindX</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
  <nav class="topbar">
    <div class="topbar-inner container">
      <div class="brand">
        <a class="brand-link" href="${pageContext.request.contextPath}/">MindX</a>
      </div>

      <ul class="nav-links">
        <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/mood_submit.jsp">AI Recommender</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/mood_tracker.jsp">Mood Tracker</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/resources.jsp">Resources</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/sos.jsp">Emergency SOS</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/quote.jsp">Quote</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/forum.jsp">Forum</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/appointment.jsp">Appointments</a></li>
      </ul>

      <div class="top-actions">
        <a class="top-link" href="${pageContext.request.contextPath}/jsp/login.jsp">Login</a>
        <a class="top-link" href="${pageContext.request.contextPath}/jsp/profile.jsp">Profile</a>
      </div>
    </div>
  </nav>

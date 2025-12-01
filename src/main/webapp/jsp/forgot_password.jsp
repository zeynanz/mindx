<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.jsp" %>

<div class="center-wrap">
  <div class="auth-card" style="max-width:520px;">
    <h3 class="auth-title">Forgot Password</h3>

    <p class="muted" style="text-align:center; margin-bottom:14px;">
      Enter your registered email address or matric number. A password reset link or temporary code will be sent
      to your email if a matching account is found.
    </p>

    <% String message = (String) request.getAttribute("message");
       if (message != null) { %>
      <div class="alert" style="background:#eef9f3;color:#065a37;border:1px solid rgba(6,90,55,0.08);">
        <%= message %>
      </div>
    <% } %>

    <form action="${pageContext.request.contextPath}/forgot-password" method="post" class="auth-form">
      <label class="label">Email</label>
      <input class="input" type="email" name="email" placeholder="you@university.edu" />

      <label class="label">Matric Number (optional)</label>
      <input class="input" type="text" name="matric" placeholder="A23XXXXXX" />

      <div class="center" style="margin-top:12px;">
        <button class="btn primary" type="submit">Request Reset</button>
      </div>

      <div class="center" style="margin-top:12px;">
        <a href="${pageContext.request.contextPath}/jsp/login.jsp" class="top-link">Back to Login</a>
      </div>
    </form>

  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

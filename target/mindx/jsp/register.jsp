<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.jsp" %>

<div class="center-wrap">
  <div class="hero-card hero-card-large" style="max-width:560px;">
    <h2 style="text-align:center; margin-bottom:12px;">Create an account</h2>

    <form id="registerForm" action="${pageContext.request.contextPath}/register" method="post" class="form-compact form-large">
    
    <label class="label">Full name</label>
    <input class="input large-input" type="text" name="fullname" required />

    <label class="label">Username</label>
    <input class="input large-input" type="text" name="username" required />

    <label class="label">Email</label>
    <input class="input large-input" type="email" name="email" required />

    <label class="label">Matric Number</label>
    <input class="input large-input" type="text" name="matric" placeholder="e.g. A23XXXXXX" required />

    <label class="label">Password</label>
    <input class="input large-input" type="password" name="password" required />

    <label class="label">Confirm Password</label>
    <input class="input large-input" type="password" name="confirmPassword" required />

    <div class="center mt-20">
        <button class="btn primary btn-large" type="submit">Register</button>
    </div>

    <div class="center mt-12 muted small">
        Already have an account? <a href="${pageContext.request.contextPath}/jsp/login.jsp">Sign in</a>
    </div>

    </form>
  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

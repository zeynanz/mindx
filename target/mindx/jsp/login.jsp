<%@ include file="../includes/header.jsp" %>

<div class="center-wrap">
  <div class="login-hero">
    <div class="hero-side">
      <img src="${pageContext.request.contextPath}/images/logo-heart.png" alt="logo" class="hero-logo-lg"/>
      <div class="hero-welcome">Welcome to MindX</div>
    </div>

    <div class="auth-card">
      <h3 class="auth-title">Sign In</h3>

      <% String err = (String) request.getAttribute("error");
         if (err != null) { %>
        <div class="alert error"><%= err %></div>
      <% } %>

      <form action="${pageContext.request.contextPath}/login" method="post" class="auth-form">
        <label class="label">Username</label>
        <input class="input" type="text" name="username" placeholder="Username" required/>

        <label class="label">Password</label>
        <input class="input" type="password" name="password" placeholder="Password" required/>

        <div class="row-between small muted">
          <label><input type="checkbox"/> Remember me</label>
          <!-- link moved to a separate small link area as well -->
          <a href="${pageContext.request.contextPath}/jsp/forgot_password.jsp">Forgot Password?</a>
        </div>

        <div class="center" style="margin-top:6px;">
          <button class="btn primary">Login</button>
        </div>

        <!-- Register and alternative actions -->
        <div class="center" style="margin-top:14px; display:flex; gap:10px; justify-content:center;">
          <a class="btn outline" href="${pageContext.request.contextPath}/jsp/register.jsp">Register</a>
          <a class="btn" href="${pageContext.request.contextPath}/">Back to Home</a>
        </div>

      </form>
    </div>
  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

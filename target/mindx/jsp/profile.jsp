<%@ include file="../includes/header.jsp" %>

<div class="container small-container">
  <div class="profile-card">
    <div class="profile-left">
      <div class="avatar">
        <img src="${pageContext.request.contextPath}/images/avatar-placeholder.png" alt="avatar"/>
      </div>
      <div class="name">Dr. Aisyah Binti Hassan</div>
      <div class="muted">Student - A23050405</div>
    </div>

    <div class="profile-right">
      <h3>Profile Details</h3>
      <div class="profile-grid">
        <div><strong>Full Name</strong></div><div>Dr. Aisyah Binti Hassan</div>
        <div><strong>Student ID</strong></div><div>A23050405</div>
        <div><strong>Email</strong></div><div>aisyah.hassan@graduate.utm.my</div>
        <div><strong>Phone</strong></div><div>+60-3-2876-6542</div>
        <div><strong>Faculty</strong></div><div>Faculty of Computing</div>
        <div><strong>Year of Study</strong></div><div>2</div>
      </div>

      <div class="actions-row">
        <button class="btn">Edit</button>
        <button class="btn outline">Logout</button>
      </div>
    </div>
  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

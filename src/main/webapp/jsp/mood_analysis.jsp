<%@ include file="../includes/header.jsp" %>

<div class="container small-container">
  <div class="analysis-card">
    <h3>AI Mood Data Analization</h3>

    <div class="analysis-box">
      <div class="analysis-text">Hello, how are you today? Share with me and I can give various types of recommended actions for you.</div>
      <div class="stress-bubble">Stress level: 4</div>
    </div>

    <div class="recommendations">
      <h4>Recommendations</h4>
      <ol>
        <li>Visit the UTM Mental Health Counselor.</li>
        <li>Try guided breathing for 5 minutes.</li>
        <li>Short walking break (10 minutes).</li>
      </ol>
    </div>

    <div class="center">
      <a class="btn" href="${pageContext.request.contextPath}/jsp/mood_submit.jsp">Submit another mood</a>
    </div>
  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

<%@ include file="includes/header.jsp" %>

<main class="landing-hero">
  <div class="container hero-inner">
    <div class="hero-copy">
      <h1>MindX Health Hub</h1>
      <p class="hero-lead">
        MindX is built to support students' mental wellbeing through easy mood tracking,
        personalised recommendations, secure accounts, and a suite of helpful resources.
      </p>
      <p class="hero-cta">
        <a class="btn primary" href="${pageContext.request.contextPath}/jsp/mood_submit.jsp">Try AI Recommender</a>
        <a class="btn outline" href="${pageContext.request.contextPath}/jsp/login.jsp" style="margin-left:12px;">Sign In</a>
      </p>
    </div>

    <div class="hero-visual">
      <img src="${pageContext.request.contextPath}/images/logo-heart.png" alt="MindX logo" class="hero-logo-large"/>
    </div>
  </div>
</main>

<section class="container content-section">
  <h2>Why mental wellbeing matters</h2>

  <p>
    Mental wellbeing is essential for academic success, personal growth and long-term health.
    Students face unique pressures exams, deadlines, social expectations, and the transition to independence,
    all of which can affect mood, focus and motivation. MindX recognises that small, timely interventions often
    make a big difference: spotting trends early, suggesting targeted actions, and connecting students with the
    right resources and support.
  </p>

  <h3>What MindX offers</h3>
  <ul>
    <li><strong>Confidential mood logging:</strong> Quickly record mood text and a numeric mood level to track how you feel over time.</li>
    <li><strong>AI-driven recommendations:</strong> Receive short, actionable suggestions tailored to your mood and situation. e.g. breathing exercises, sleep tips, campus resources.</li>
    <li><strong>Resources & forum:</strong> Discover curated articles and community topics (anonymous posting preserves privacy).</li>
    <li><strong>Emergency support:</strong> SOS features and counselor appointment booking are available to get help when it matters most.</li>
  </ul>

  <h3>How to get started</h3>
  <ol>
    <li>Register an account or sign in if you already have one.</li>
    <li>Open <em>AI Recommender</em> to submit a quick mood log, write a sentence about how you feel and pick a mood level.</li>
    <li>Read the recommendations and try the suggested steps (breathing, short breaks, resources).</li>
    <li>Use the profile and resources pages to personalize your experience over time.</li>
  </ol>

  <p class="muted">
    Section 5 : Group 2
  </p>
</section>

<%@ include file="includes/footer.jsp" %>

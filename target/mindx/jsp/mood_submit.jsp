<%@ include file="../includes/header.jsp" %>

<div class="center-wrap">
  <div class="mood-panel">
    <h3>AI Mood Data Analization</h3>
    <p class="muted">Share how you are feeling today. The AI will analyze and provide personalised recommendations.</p>

    <textarea class="mood-input" placeholder="Write about your mood, e.g. 'I feel anxious about an upcoming test...'"></textarea>

    <div class="row-between" style="margin-top:8px;">
      <div>
        <label class="label small">Mood Level</label>
        <input class="input small" type="number" min="1" max="10" value="5"/>
      </div>

      <div class="center">
        <button class="btn primary">Submit</button>
      </div>
    </div>

  </div>
</div>

<%@ include file="../includes/footer.jsp" %>

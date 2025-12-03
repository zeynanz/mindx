<%@ include file="../includes/header.jsp" %>

<style>
.page-sos .mood-panel {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
}
</style>

<div class="page-sos">
    <div class="center-wrap">
    <div class="mood-panel">

        <div class="sos-container">

            <!-- Emergency Alert Text -->
            <div class="alert-sent">
                Emergency SOS
            </div>
            
            <!-- SOS Button -->
            <button class="sos-button">SOS</button>

        <div class="row-between" style="margin-top:8px;">
            <!-- Continue Button -->
            <div>
                <button class="continue-btn">Continue</button>
            </div>

            <div>
                <h4>Share Location</h4>
            </div>

            <!-- Back Button -->
            <div>
                <button class="back-btn">Back</button>
            </div>
            </div>


        </div>

    </div>
    </div>
</div>

<%@ include file="../includes/footer.jsp" %>



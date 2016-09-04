<%
    ui.includeCss("drugorders", "drugorders.css")
%>

<% drugOrderMainPlanActive.each { drugOrderMain -> %>
    <% drugOrderExtensionPlanActive.each { drugOrderExtension -> %>
        <% if(drugOrderMain.key == drugOrderExtension.key) { %>
            <p>
                <span class="viewDetails">
                    <i class="icon-plus edit-action" title="${ ui.message("View Details") }"></i>
                    <i class="icon-minus edit-action" title="${ ui.message("Hide Details") }"></i>
                </span>
                
                ${drugOrderMain.key.getDisplayString()}
                
                <span id="button" class="pull-right">
                    <i class="icon-remove delete-action" title="${ ui.message("Discard") }" onclick="discardMedPlanOrder('DISCONTINUE PLAN','${drugOrderMain.key.getDisplayString()}')"></i>
                </span>
                
            </p><br/>
            
            <div class="orderDetails">
                <% drugOrderMain.value.each { drugOrderMn -> %>
                    <% drugOrderExtension.value.each { drugOrderExtn -> %>
                        <% if(drugOrderMn.orderId == drugOrderExtn.orderId) { %>

                            <p class="fields">
                                <span id="order_label">   
                                    <a href="#" class="detailsLink" onclick="showDrugOrderViewWindow('VIEW ORDER','${ ui.format(patient.givenName) }','${ ui.format(patient.familyName) }','${ drugOrderExtn.startdate }','${ drugOrderExtn.drugname.getDisplayString() }','${ drugOrderMn.dose }','${ drugOrderMn.doseUnits.getDisplayString() }','${ drugOrderMn.route.getDisplayString() }','${ drugOrderMn.duration }','${ drugOrderMn.durationUnits.getDisplayString() }','${ drugOrderMn.quantity }','${ drugOrderMn.quantityUnits.getDisplayString() }','${ drugOrderMn.frequency }','${ drugOrderExtn.patientinstructions }','${ drugOrderExtn.pharmacistinstructions }')">${drugOrderExtn.drugname.getDisplayString()}</a>
                                </span>

                                <span id="button" class="pull-right">
                                    <i class="icon-pencil edit-action" title="${ ui.message("Edit") }" onclick="showEditIndividualDrugOrderWindow('Edit Drug Order','${ drugOrderMn.orderId }','${ drugOrderExtn.drugname.getDisplayString() }','${ drugOrderExtn.startdate }','${ drugOrderMn.dose }','${ drugOrderMn.doseUnits.getDisplayString() }','${ drugOrderMn.route.getDisplayString() }','${ drugOrderMn.duration }','${ drugOrderMn.durationUnits.getDisplayString() }','${ drugOrderMn.quantity }','${ drugOrderMn.quantityUnits.getDisplayString() }','${ drugOrderMn.frequency }','${drugOrderMain.key.getDisplayString()}','${ drugOrderExtn.patientinstructions }','${ drugOrderExtn.pharmacistinstructions }')"></i>
                                    <i class="icon-remove delete-action" title="${ ui.message("Delete") }" onclick="showDiscontinueIndividualDrugOrderWindow('DISCONTINUE ORDER','${ drugOrderMn.orderId }','${ ui.format(patient.givenName) }','${ ui.format(patient.familyName) }','${ drugOrderExtn.startdate }','${ drugOrderExtn.drugname.getDisplayString() }','${ drugOrderMn.dose }','${ drugOrderMn.doseUnits.getDisplayString() }','${ drugOrderMn.route.getDisplayString() }','${ drugOrderMn.duration }','${ drugOrderMn.durationUnits.getDisplayString() }','${ drugOrderMn.quantity }','${ drugOrderMn.quantityUnits.getDisplayString() }','${ drugOrderMn.frequency }','${ drugOrderExtn.patientinstructions }','${ drugOrderExtn.pharmacistinstructions }')"></i>
                                </span>
                                <br/><br/>
                            </p>
                        <% } %>
                    <% } %>
                <% } %>
            </div><br/>
        <% } %>
    <% } %>
<% } %>


<div id="drugOrderPlanDiscontinued">
    
    <% drugOrderMainPlanNonActive.each { drugOrderMain -> %>
        <% drugOrderExtensionPlanNonActive.each { drugOrderExtension -> %>
            <% if(drugOrderMain.key == drugOrderExtension.key) { %>
                <p>
                    <span class="viewDetails">
                        <i class="icon-plus edit-action" title="${ ui.message("View Details") }"></i>
                        <i class="icon-minus edit-action" title="${ ui.message("Hide Details") }"></i>
                    </span>

                    ${drugOrderMain.key.getDisplayString()}

                    <span id="button" class="pull-right">
                        <i class="icon-edit delete-action" title="${ ui.message("Renew") }" onclick=""></i>
                    </span>

                </p><br/>

                <div class="orderDetails">
                    <% drugOrderMain.value.each { drugOrderMn -> %>
                        <% drugOrderExtension.value.each { drugOrderExtn -> %>
                            <% if(drugOrderMn.orderId == drugOrderExtn.orderId) { %>

                                <p class="fields">
                                    <span id="order_label">   
                                        <a href="#" class="detailsLink" onclick="showDrugOrderViewWindow('VIEW ORDER','${ ui.format(patient.givenName) }','${ ui.format(patient.familyName) }','${ drugOrderExtn.startdate }','${ drugOrderExtn.drugname.getDisplayString() }','${ drugOrderMn.dose }','${ drugOrderMn.doseUnits.getDisplayString() }','${ drugOrderMn.route.getDisplayString() }','${ drugOrderMn.duration }','${ drugOrderMn.durationUnits.getDisplayString() }','${ drugOrderMn.quantity }','${ drugOrderMn.quantityUnits.getDisplayString() }','${ drugOrderMn.frequency }','${ drugOrderExtn.patientinstructions }','${ drugOrderExtn.pharmacistinstructions }')">${drugOrderExtn.drugname.getDisplayString()}</a>
                                    </span><br/>
                                </p>
                            <% } %>
                        <% } %>
                    <% } %>
                </div><br/>
            <% } %>
        <% } %>
    <% } %>
</div>


<script type="text/javascript">
    jq(".icon-plus").click(function(){
        jq(this).parent().parent().nextAll(".orderDetails").show();
        jq(this).hide();
        jq(this).nextAll(".icon-minus").show();
    });
</script>

<script type="text/javascript">
    jq(".icon-minus").click(function(){
        jq(this).parent().parent().nextAll(".orderDetails").hide();
        jq(this).hide();
        jq(this).prevAll(".icon-plus").show();
    });
</script>
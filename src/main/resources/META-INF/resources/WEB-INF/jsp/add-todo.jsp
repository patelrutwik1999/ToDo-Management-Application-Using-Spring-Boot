<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
    <h1>Enter todo details</h1>
    <%--@elvariable id="todo" type=""--%>
    <form:form method="post" modelAttribute="todo">
        <fieldset class="mb-4">
            <form:label path="description">Description</form:label>
            <form:input type="text" path="description" required="true" />
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="mb-4">
            <form:label path="targetBy">Target Date</form:label>
            <form:input type="text" path="targetBy" required="true" />
            <form:errors path="targetBy" cssClass="text-warning"/>
        </fieldset>

        <form:input type="hidden" path="id"/>
        <form:input type="hidden" path="done"/>

        <input type="submit" value="Submit" class="btn btn-success" >
    </form:form>
</div>

<%@ include file="common/footer.jspf" %>
<script type="text/javascript">
    $('#targetBy').datepicker({
        format: 'yyyy-mm-dd',
    });
</script>


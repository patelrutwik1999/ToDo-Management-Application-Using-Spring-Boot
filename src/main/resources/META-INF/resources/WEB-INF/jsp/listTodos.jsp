<%@ include file="common/header.jspf" %>
    <%@ include file="common/navigation.jspf" %>
    <div class="container">
        <h1>Your Todos</h1>
        <table class="table">
            <thead>
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetBy}</td>
                    <td>${todo.done}</td>
                    <td>
                        <a href="delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
                        <a href="update-todo?id=${todo.id}" class="btn btn-warning">Update</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="add-todo" class="btn btn-success">Add Todo</a>
    </div>

<%@ include file="common/footer.jspf" %>
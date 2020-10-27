<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Build Your Computer</title>
</head>
<body>
    <%  String processor = request.getParameter("processor");
        if (processor != "") {%>
            <%= processor %>
            <% if (processor.equals("Celeron D")) { %>
                <br><i>Have you considered a more powerful processor?</i>
            <% } %>
        <% } else { %>
            No processor selected.
        <% } %>

    <%  String monitor = request.getParameter("accessories");
        if (monitor != "") { %>
            <p>Monitor added.</p>
        <% } else { %>
            <p>No monitor added.</p>
        <% } %>

    <%  String[] peripherals = request.getParameterValues("peripherals"); 
        if (peripherals != null) {
            for (int i = 0; i < peripherals.length; i++) {%>
                <%= peripherals[i] %> <br>
            <% } %>
        <% } else { %>
            Nothing was chosen.
        <% } %>
</body>
</html>
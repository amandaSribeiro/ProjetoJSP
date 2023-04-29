<% 
           String usu = (String) session.getAttribute("usuario");
           String nivel = (String) session.getAttribute("nivel");
           if(usu==null)
           {
            response.sendRedirect("index.jsp");
        }
        %>
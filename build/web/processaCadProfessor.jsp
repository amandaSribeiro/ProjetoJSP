<%@ include file="referencias.jsp" %>
<%
             Statement st = null;
             ResultSet rs = null;
            if(request.getParameter("btnSalvar")!=null){
                String nome = request.getParameter("txtNome");
                String email = request.getParameter("txtEmail");   
                String status = request.getParameter("txtStatus"); 
               try{
                        st = new Conexao().conectar().createStatement();
                        st.executeUpdate("insert into tbprofessor(nomeProf,emailProf, status) values('"+nome+"','"+email+"','"+status+"')");    
                        out.println("<meta http-equiv='refresh' content='0;URL=principal.jsp'>");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Cadastro realizado com sucesso');");
                        out.println("</script>");    
                        }
                catch(Exception e)
                        {
                        out.println(e);
                        }
            }
            %>
<%@ include file="referencias.jsp" %>
<%
            Statement st = null;
            ResultSet rs = null;
            if(request.getParameter("btnAtualizar")!=null){
                String id = request.getParameter("txtCod");         
               try{
                        st = new Conexao().conectar().createStatement();
                        st.executeUpdate("Update tbprofessor set status=0 where codProf='"+id+"'");     
                        out.println("<meta http-equiv='refresh' content='0;URL=excluirProfessor.jsp'>");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Professor excluído com sucesso');");
                        out.println("</script>");    
                        }
                catch(Exception e)
                        {
                        out.println(e);
                        }
  
            }
            %>

<%@ include file="referencias.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="estilos.jsp" %>
        
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="testarSessao.jsp" %>
        <%@ include file="menu.jsp" %>
        <h1>Lista de Professores</h1>
        
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCad"> Cadastro de Professores</button>
        
        <br><br>
        <%  
            Statement st = null;
            ResultSet rs = null;
            try{
     
            st = new Conexao().conectar().createStatement();
            
            rs = st.executeQuery("Select * from tbprofessor where status=1");
            
            
            out.println("<table border=1><tr>");
            out.println("<td>Código</td>");
            out.println("<td>Nome</td>");
            out.println("<td>E-mail</td></tr>");
            
            while(rs.next())
            {
            out.println("<tr><td>" + rs.getString(1) + "</td>");
            out.println("<td>" + rs.getString(2) + "</td>");
            out.println("<td>" + rs.getString(3)+ "</td></tr>");  
        }
            out.println("</table>");
            }
            catch(Exception e)
            {
            out.println(e);
            }
                
            %>
            
            <!-- Modal -->
<div class="modal fade" id="modalCad" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cadastro de Professores</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="processaCadProfessor.jsp" method="post" id="cadastro">
                <div class="form-group">
                    <label>Professor</label><br>
                    <input type="text" name="txtNome"><br>
                    <label>email</label><br>
                    <input type="text" name="txtEmail"><br>
                    <label>status</label><br>
                    <input type="text" name="txtStatus"><br>
                    <br><br>
                    <input type="submit" name="btnSalvar" class="btn btn-primary">
                </div>
            </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
            
            
            
            
            
            
    </body>
</html>
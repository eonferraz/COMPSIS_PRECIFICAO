Sub UPDATE_USUARIOS()
    
    Dim cn As Object
    Dim rs As Object
    Dim strSQL As String
    Dim strServer As String
    Dim strPort As String
    Dim strDatabase As String
    Dim strUser As String
    Dim strPassword As String
    
    ' Definindo os parâmetros de conexão conforme suas credenciais
    strServer = "10.0.61.0"
    strPort = "5432"
    strDatabase = "precificacao"
    strUser = "precificacao"
    strPassword = "Pr3ciF1cAca0Xml4"
    
    ' Cria a conexão ADODB
    Set cn = CreateObject("ADODB.Connection")
    
    ' Abre a conexão utilizando o driver ODBC do PostgreSQL.
    ' Atenção: Certifique-se de que o driver "PostgreSQL ODBC Driver(UNICODE)" esteja instalado no seu sistema.
    cn.Open "Driver={PostgreSQL Unicode};" & _
            "Server=" & strServer & ";" & _
            "Port=" & strPort & ";" & _
            "Database=" & strDatabase & ";" & _
            "Uid=" & strUser & ";" & _
            "Pwd=" & strPassword & ";"
            
    ' Recupera a consulta SQL a partir da célula F1 da planilha "USUÁRIOS"
    strSQL = Sheets("USUÁRIOS").Range("F1").Value
    'Debug.Print strSQL
    ' Executa a consulta
    Set rs = cn.Execute(strSQL)
    
    ' Fecha a conexão
    cn.Close
    
    ' Libera os objetos
    Set rs = Nothing
    Set cn = Nothing
    
    ' Atualiza todos os dados vinculados na planilha
    ActiveWorkbook.RefreshAll

End Sub

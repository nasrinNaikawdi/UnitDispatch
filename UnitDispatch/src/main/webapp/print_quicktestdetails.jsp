
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="headeradmin.jsp" %> 
<html>
<head>


</head>
<body>
<%!
Connection con3;
String ref="";

%>
<%
try
{
	Class.forName(MM_dbConn_DRIVER);
	con3= DriverManager.getConnection(MM_dbConn_STRING1,MM_dbConn_USERNAME,MM_dbConn_PASSWORD);
	
	Statement stmt1 = con3.createStatement();
	ResultSet rs1=null;
	String sql1="";
	ref=request.getParameter("refno");
	
	
	
	
%>
<table width="100%">
<tr>
<td align="center">Quick Test Details
</td>
</tr>
<tr>

				</tr>
</table>

<table width="100%" border="1" align="center" class="sortable">

			<tr>
			
			<th class="hed"> Ref No</th>
			<th class="hed"> Date</th>
			<th class="hed"> Customer Name</th>
			<th class="hed"> Customer DB</th>
			<th class="hed"> Unit ID</th>
			<th class="hed"> Unit Type</th>
			<th class="hed"> WMSN</th>
			<th class="hed"> Mobile No DB</th>
			<th class="hed"> Sim No DB</th>
			<th class="hed"> RLED</th>
			<th class="hed"> GLED</th>
			<th class="hed"> GLED Blink</th>
			<th class="hed"> RLEDConn</th>
			<th class="hed"> GLED Ok</th>
			<th class="hed"> Other Conn</th>
			<th class="hed"> Firmware</th>
			<th class="hed"> Comment</th>
			<th class="hed"> Debit Note</th>
			<th class="hed"> Manufactured By</th>
			<th class="hed"> Correction Done</th>
			<th class="hed"> Ent By</th>
			</tr>	
			<%
			sql1="select *from hwunittest where RefNo='"+ref+"'";
			
			rs1=stmt1.executeQuery(sql1);
			if(rs1.next())
			{%>
				<tr>
				
				<td><%=rs1.getString("RefNo") %></td>
				<td><%=rs1.getString("TheDate")%> </td>
				<td><%=rs1.getString("Cust")%> </td>
				<td><%=rs1.getString("Custdb")%> </td>
				<td><%=rs1.getString("UnitID")%> </td>
				<td><%=rs1.getString("UnitType")%> </td>
				<td><%=rs1.getString("WMSN")%> </td>
				<td><%=rs1.getString("MobileDB")%> </td>
				<td><%=rs1.getString("SIMDB")%> </td>
				<td><%=rs1.getString("RLED")%> </td>
				<td><%=rs1.getString("GLED")%> </td>
				<td><%=rs1.getString("GLEDBlink")%> </td>
				<td><%=rs1.getString("RLEDConn")%> </td>
				<td><%=rs1.getString("GLEDOk")%> </td>
				<td><%=rs1.getString("OthConn")%> </td>
				<td><%=rs1.getString("Firmware")%> </td>
				<td><%=rs1.getString("SWComment")%> </td>
				<td><%=rs1.getString("SWDebitNote")%> </td>
				<td><%=rs1.getString("ManufactBy")%> </td>
				<td><%=rs1.getString("Correctiondone")%> </td>
				<td><%=rs1.getString("User")%> </td>
				</tr>
				<% }
				
				
				
			%>
			</table>
			<%
} catch(Exception e) { out.println("Exception----->"+e); }

finally
{
con3.close();
}
%>
<input type="button" class="formElement" name="print" value="Print" onclick="javascript:window.print();" title="Print">
</body>
</html>
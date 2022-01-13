<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            <style>
                *{
                    font-family:  sans-serif;
                }
                a{
                    text-decoration: none;
                    color: white;
                }
                th,td{
                    padding:.5rem;
                }
            </style>
			<body style="padding:0; margin:0">
                
				<header style="text-align:center; background: #000000; color: #ffffff;padding:1rem 0 0 0">
                    <h1>Employee Management System</h1>
                    <div style="padding:0 0 1rem 0">
                        <a style="padding:1rem" href="#">Home</a>
                        <a style="padding:1rem" href="#">Employees</a>
                        <a style="padding:1rem" href="#">Services</a>
                        <a style="padding:1rem" href="#">Contact Us</a>
                        <a style="padding:1rem" href="#">Help</a>
                    </div>
                </header>
				<div align="center">
                    <h2>Employee Details</h2>
                    <table style="padding:1rem; border:1px solid black" >
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>AGE</th>
                            <th>SALARY</th>
                            <th>EMAIL</th>
                            <th>MobNum</th>
                            <th>Designation</th>
                            <th>Promotion</th>
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <xsl:sort select="Emp-id" order="ascending"/>
                                <tr>
                                    <td>
                                        <xsl:value-of select="Emp-id"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Emp-name"/>
                                    <td>
                                        <xsl:value-of select="Emp-age"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Emp-salary"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Emp-emailid"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Emp-Phonenum"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Emp-designation"/>
                                    </td>
                                    <td>
                                        <xsl:choose>
                                            <xsl:when test="Emp-age &gt; 49">Associate Project Manager</xsl:when>
                                            <xsl:when test="Emp-age &gt; 39">Team Leader</xsl:when>
                                            <xsl:otherwise>Developer</xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
		    </body>
		</html>
</xsl:template> 
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <title>XML | Sachin Krishna</title>
                <style>
                body{
                    box-sizing: border-box;
                    font-family: Arial, Helvetica, sans-serif;
                }
                h1{
                    margin: 2rem;
                    text-align: center;
                    text-decoration: underline;
                }
                table, tr, td, th{
                    border: 1px solid;
                    border-collapse: collapse;
                }
                .tables{
                    display: flex;
                    justify-content: center;
                    margin-top: 3em;
                }
                td,td,th{
                    width: 10em;
                    height: 2em;
                    text-align: center;
                }
            </style>
            </head>

            <body>
                <h1>Users</h1>
                <div class="tables">
                    <table>
                        <tr bgcolor="#e3e3e3">
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Age</th>
                            <th>Email</th>
                        </tr>
                        <xsl:for-each select="users/user">
                            <xsl:sort select="fname" />
                            <xsl:if test="age&lt;40">
                                <tr>
                                    <td>
                                        <xsl:value-of select="userid" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="fname" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="lname" />
                                    </td>
                                    <xsl:choose>
                                        <xsl:when test="age > 30">
                                            <td style="background-color: rgb(250, 250, 188);">
                                                <xsl:value-of select="age" />
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td style="background-color: rgb(188, 250, 212);">
                                                <xsl:value-of select="age" />
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <td>
                                        <xsl:value-of select="email" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </table>
                </div>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>
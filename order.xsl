<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>
<xsl:template match="article">
<html lang="en">
<body style="background-color:black;color:white">
	<br></br><br></br><br></br><br></br><br></br>
    <table  align="center" border-radius="10px" width="1000" cellpadding="5">
    <tr>
    <th colspan="6" style="border-style:outset;border-color: #96D4D4;font:30px Comic Sans MS">Order Details</th>
    </tr>

    <tr >
    <th>Order code</th>
    <th>Cake Name</th>
    <th>Quantity</th>
    <th>Price</th>
    <th>status</th>
    </tr>

    <xsl:for-each select="order">
    <xsl:sort select="id"/>
    <tr align="center">
        <td><xsl:value-of select="code"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="quantity"/></td>
        <td><xsl:value-of select="price"/></td>
        <xsl:choose>
        <xsl:when test="status='Delivered'">
        <td style="background-color:purple;"><xsl:value-of select="status"/></td>
        </xsl:when>
        <xsl:otherwise>
        <td><xsl:value-of select="status"/></td>
        </xsl:otherwise>
        </xsl:choose>
    </tr>
    </xsl:for-each>
    </table>

<br></br><br></br><br></br><br></br><br></br>

    <table  align="center" border-radius="10px" width="1000" cellpadding="5">
    <tr>
    <th colspan="5" style="border-style:outset;border-color: #96D4D4;font:30px Comic Sans MS">Order Details using if condition(price>400)</th>
    </tr>

    <tr >
    <th>Order code</th>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Quantity</th>
    <th>Price</th>
    </tr>

    <xsl:for-each select="order">
    <xsl:if test="price &gt; 400">
    <tr align="center">
        <td><xsl:value-of select="code"/></td>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="quantity"/></td>
        <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
    </table>

<br></br><br></br><br></br><br></br><br></br>
    <h4 style="text-align:center;"><xsl:value-of select="writer"/>
    <xsl:value-of select="copyright"/></h4>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
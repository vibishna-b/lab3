<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>
<xsl:template match="article">
<html lang="en">
<body style="background-color:black;color:white">
	<xsl:apply-templates/>
</body>
</html>

</xsl:template>
<xsl:template match="article">
  <table align="center">
    <tr>
    <th><xsl:apply-templates select="head"/> </th> </tr>
    <tr>
    <th><xsl:apply-templates select="username"/> </th> </tr>
    <tr>
    <th><xsl:apply-templates select="password"/> </th> </tr>
  </table>

</xsl:template>



<xsl:template match="head">
  <span style="font:30px sans-serif;">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="username">
  Username:<span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="password">
  Password:<span style="color:purple">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>


</xsl:stylesheet>
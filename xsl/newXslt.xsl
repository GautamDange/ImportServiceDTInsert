<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>

 <xsl:template match="/*">
   <xsl:apply-templates select="(*/Price/text())[1]">
     <xsl:with-param name="pNodes" select="*/Price/text()"/>
   </xsl:apply-templates>
 </xsl:template>

 <xsl:template match="text()" name="sum">
  <xsl:param name="pTotal" select="0"/>
  <xsl:param name="pNodes"/>
  <xsl:param name="pNode1" select="translate($pNodes[1],'+','')"/>

  <xsl:value-of select="substring($pTotal+$pNode1, 1 div not($pNodes[2]))"/>
  <xsl:apply-templates select="$pNodes[2][$pNode1]">
    <xsl:with-param name="pTotal" select="$pTotal+$pNode1"/>
    <xsl:with-param name="pNodes" select="$pNodes[position()>1]"/>
  </xsl:apply-templates>
 </xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:param name="hundred" select="100"/>
<xsl:output method="html" indent="yes"/>
<xsl:template match="/WBBDLD07/IDOC">
<xsl:variable name="alpha" select="'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
<xsl:variable name="quote">"</xsl:variable>
{
	"products":[ 
		<xsl:for-each select="E1WBB01">   
		{
			<xsl:variable name="MATNR_LONG" >
				<xsl:apply-templates select="MATNR_LONG"/>
			</xsl:variable>
			<xsl:variable name="MATNR" >
				<xsl:apply-templates select="MATNR"/>
			</xsl:variable>
			"Dimensions": 
			[
			<xsl:for-each select="E1WBB03"> 
			{
				<xsl:variable name="LAENG" >
					<xsl:apply-templates select="LAENG"/>
				</xsl:variable>
				<xsl:variable name="BREIT" >
					<xsl:apply-templates select="BREIT"/>
				</xsl:variable>
				<xsl:variable name="HOEHE" >
					<xsl:apply-templates select="HOEHE"/>
				</xsl:variable>
				<xsl:variable name="MEABM" >
					<xsl:apply-templates select="MEABM"/>
				</xsl:variable>
				<xsl:variable name="BRGEW" >
					<xsl:apply-templates select="BRGEW"/>
				</xsl:variable>
				<xsl:variable name="GEWEI" >
					<xsl:apply-templates select="GEWEI"/>
				</xsl:variable>
				<xsl:variable name="UMREZ" >
					<xsl:apply-templates select="UMREZ"/>
				</xsl:variable>
				<xsl:variable name="UMREN" >
					<xsl:apply-templates select="UMREN"/>
				</xsl:variable>
				<xsl:variable name="MEINH" >
					<xsl:apply-templates select="MEINH"/>
				</xsl:variable>		
				"Length":"<xsl:value-of   select="$LAENG"/>",
				"Width":"<xsl:value-of    select="$BREIT"/>",
				"Height":"<xsl:value-of   select="$HOEHE"/>",
				"Unit":"<xsl:value-of     select="$MEABM"/>",
				
				"Weight":<xsl:value-of select="$quote"/><xsl:value-of   select="$BRGEW"/>",
				"WeightUnit":<xsl:value-of select="$quote"/><xsl:value-of    select="$GEWEI"/>",
				"ConversionDenominatorForBaseUnit":"<xsl:value-of   select="$UMREZ"/>",
				"ConversionCounterForBaseUnit":"<xsl:value-of     select="$UMREN"/>",
				"LogisticalUnit":"<xsl:value-of   select="MEINH"/>",
				"GTIN":[
				<xsl:for-each select="E1WBB04">  
					<xsl:variable name="EAN" >
						<xsl:apply-templates select="EAN11"/>
					</xsl:variable>
					"<xsl:value-of     select="$EAN"/>"
					<xsl:if test="position() != last()"> 		         		<xsl:text>,</xsl:text>        </xsl:if> 
				</xsl:for-each>
				]
			}
			<xsl:if test="position() != last()"> 		         		<xsl:text>,</xsl:text>        </xsl:if> 
			</xsl:for-each>	
			],
			<xsl:variable name="MAKTM" >
				<xsl:apply-templates select="E1WBB10/MAKTM"/>
			</xsl:variable>
			<xsl:variable name="SORF1" >
				<xsl:apply-templates select="E1WBB18/SORF1"/>
			</xsl:variable>
			<xsl:variable name="FACIN" >
				<xsl:apply-templates select="E1WBB18/FACIN"/>
			</xsl:variable>
			"SORF1":"<xsl:value-of    select="$SORF1"/>",
			"Facings":"<xsl:value-of  select="$FACIN"/>",
			"Name":"<xsl:value-of     select="$MAKTM"/>"
		}
		<xsl:if test="position() != last()"> 		         		<xsl:text>,</xsl:text>        </xsl:if> 
		</xsl:for-each>	
	]
}
</xsl:template>
</xsl:stylesheet>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:param name="hundred" select="100"/>
<xsl:output method="html" indent="yes"/>
<xsl:template match="/WBBDLD07/IDOC">
<xsl:param name="factors">1234567890</xsl:param> 
<xsl:variable name="alpha" select="'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
<xsl:variable name="quote">"</xsl:variable>
{
"products":[ 	
	    <xsl:for-each select="E1WBB01">      	
{
		<xsl:variable name="price" >
     	 <xsl:apply-templates select="E1WBB03/E1WBB07/E1WBB08/KWERT"/>
    	</xsl:variable>
    	<xsl:variable name="gtinEAN" >
     	 <xsl:apply-templates select="E1WBB03/E1WBB04/EAN11"/>
    	</xsl:variable>
			"id":"<xsl:value-of select="MATNR"/>",
			"gtin":"<xsl:value-of select="$gtinEAN"/>",
			
				<xsl:for-each select="E1WBB03">  
					"length":"<xsl:value-of select="floor(LAENG)"> </xsl:value-of>",
					"depth":"<xsl:value-of select="floor(BREIT)">  </xsl:value-of>",
					"height":"<xsl:value-of select="floor(HOEHE)"> </xsl:value-of>",
					"weight":"<xsl:value-of select="floor(BRGEW)"> </xsl:value-of>",	
				<xsl:for-each select="E1WBB04"> 
			</xsl:for-each>
			
			
			<xsl:for-each select="E1WBB07"> 
				<xsl:for-each select="E1WBB08"> 
				</xsl:for-each>
	        </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="E1WBB02"> 
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB09">
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB10">
		"name":"<xsl:value-of select="MAKTM"/>",
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB12">
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB16"> 
		</xsl:for-each>

		<xsl:for-each select="E1WBB18"> 

			<xsl:variable name="SORF" >
				<xsl:value-of select="substring(SORF1, string-length(SORF1) - 4)"/>
			</xsl:variable> 


			<xsl:variable name="RIGHT3" >
				<xsl:value-of select="substring(SORF1, string-length(SORF1) - 2)"/>
			</xsl:variable> 

			<xsl:variable name="LEFT3" >
				<xsl:value-of select="substring($SORF, 1,3)"/>
			</xsl:variable> 

			<xsl:variable name="SHELF" >
				<xsl:value-of select="substring($LEFT3,1, 2)"/>
			</xsl:variable> 

			<xsl:variable name="LAYER" >
				<xsl:value-of select="substring($RIGHT3,1, 1)"/>
			</xsl:variable> 

			<xsl:variable name="ORDER" >
				<xsl:value-of select="substring($RIGHT3, string-length($RIGHT3) - 1)"/>
			</xsl:variable> 

		  "description":"{shelf:<xsl:value-of select="$SHELF"/>,shelflayer:<xsl:value-of select="$LAYER"/>,order:<xsl:value-of select="$ORDER"/>,NoOffacings:<xsl:value-of select="floor(FACIN)"/>}"
		 
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB22"> 
		</xsl:for-each> 
		
		<xsl:for-each select="E1WBBAH">
		</xsl:for-each>
		}
 		<xsl:if test="position() != last()"> 		         		<xsl:text>,</xsl:text>        </xsl:if> 
</xsl:for-each>	
]
}
</xsl:template>
</xsl:stylesheet>





<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/WBBDLD07/IDOC">
<xsl:variable name="alpha" select="'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
<xsl:variable name="quote">"</xsl:variable>
{
"products":[ 	
<xsl:for-each select="E1WBB01">      	
{

		
		"LOCNR":<xsl:value-of select="$quote"/><xsl:value-of select="LOCNR"/><xsl:value-of select="$quote"/>,
		"GTIN":<xsl:value-of select="$quote"/><xsl:value-of select="MATNR"/><xsl:value-of select="$quote"/>,
		"GLTAB":<xsl:value-of select="$quote"/><xsl:value-of select="GLTAB"/><xsl:value-of select="$quote"/>,
		"AENKZ":<xsl:value-of select="$quote"/><xsl:value-of select="AENKZ"/><xsl:value-of select="$quote"/>,
		"SPRAS":<xsl:value-of select="$quote"/><xsl:value-of select="SPRAS"/><xsl:value-of select="$quote"/>,
		"WAERS":<xsl:value-of select="$quote"/><xsl:value-of select="WAERS"/><xsl:value-of select="$quote"/>,
		"LANG_ISO":<xsl:value-of select="$quote"/><xsl:value-of select="LANG_ISO"/><xsl:value-of select="$quote"/>,
		"BSORT":<xsl:value-of select="$quote"/><xsl:value-of select="BSORT"/><xsl:value-of select="$quote"/>,
		"SEG_REPEAT":<xsl:value-of select="$quote"/><xsl:value-of select="SEG_REPEAT"/><xsl:value-of select="$quote"/>,
		"MATNR_LONG":<xsl:value-of select="$quote"/><xsl:value-of select="MATNR_LONG"/><xsl:value-of select="$quote"/>
		
		<xsl:for-each select="E1WBB03">  
		,"MEINH":<xsl:value-of select="$quote"/><xsl:value-of select="MEINH"/><xsl:value-of select="$quote"/>,
		"UMREZ":<xsl:value-of select="$quote"/><xsl:value-of select="UMREZ"/><xsl:value-of select="$quote"/>,
		"UMREN":<xsl:value-of select="$quote"/><xsl:value-of select="UMREN"/><xsl:value-of select="$quote"/>,
		"LAENG":<xsl:value-of select="$quote"/><xsl:value-of select="LAENG"/><xsl:value-of select="$quote"/>,
		"BREIT":<xsl:value-of select="$quote"/><xsl:value-of select="BREIT"/><xsl:value-of select="$quote"/>,
		"HOEHE":<xsl:value-of select="$quote"/><xsl:value-of select="HOEHE"/><xsl:value-of select="$quote"/>,
		"VOLUM":<xsl:value-of select="$quote"/><xsl:value-of select="VOLUM"/><xsl:value-of select="$quote"/>,
		"BRGEW":<xsl:value-of select="$quote"/><xsl:value-of select="BRGEW"/><xsl:value-of select="$quote"/>,
		"GEWEI":<xsl:value-of select="$quote"/><xsl:value-of select="GEWEI"/><xsl:value-of select="$quote"/>,
		"KZBSTME":<xsl:value-of select="$quote"/><xsl:value-of select="KZBSTME"/><xsl:value-of select="$quote"/>,
		"KZAUSME":<xsl:value-of select="$quote"/><xsl:value-of select="KZAUSME"/><xsl:value-of select="$quote"/>
		
		<xsl:for-each select="E1WBB04"> 
		,"EAN11":<xsl:value-of select="$quote"/><xsl:value-of select="EAN11"/><xsl:value-of select="$quote"/>,
		"EANTP":<xsl:value-of select="$quote"/><xsl:value-of select="EANTP"/><xsl:value-of select="$quote"/>,
		"HPEAN":<xsl:value-of select="$quote"/><xsl:value-of select="HPEAN"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		<xsl:for-each select="E1WBB07"> 
		,"KSCHL":<xsl:value-of select="$quote"/><xsl:value-of select="KSCHL"/><xsl:value-of select="$quote"/>,
		"DATAB":<xsl:value-of select="$quote"/><xsl:value-of select="DATAB"/><xsl:value-of select="$quote"/>,
		"STIME":<xsl:value-of select="$quote"/><xsl:value-of select="STIME"/><xsl:value-of select="$quote"/>,
		"DATBI":<xsl:value-of select="$quote"/><xsl:value-of select="DATBI"/><xsl:value-of select="$quote"/>,
		"ETIME":<xsl:value-of select="$quote"/><xsl:value-of select="ETIME"/><xsl:value-of select="$quote"/>
		
		<xsl:for-each select="E1WBB08"> 
		,"VORZN":<xsl:value-of select="$quote"/><xsl:value-of select="VORZN"/><xsl:value-of select="$quote"/>,
		"KWERT":<xsl:value-of select="$quote"/><xsl:value-of select="KWERT"/><xsl:value-of select="$quote"/>,
		"KPEIN":<xsl:value-of select="$quote"/><xsl:value-of select="KPEIN"/><xsl:value-of select="$quote"/>,
		"CURCY":<xsl:value-of select="$quote"/><xsl:value-of select="CURCY"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
        </xsl:for-each>
        </xsl:for-each>
        
        <xsl:for-each select="E1WBB02"> 
		,"LAEDA":<xsl:value-of select="$quote"/><xsl:value-of select="LAEDA"/><xsl:value-of select="$quote"/>,
		"LIQDT":<xsl:value-of select="$quote"/><xsl:value-of select="LIQDT"/><xsl:value-of select="$quote"/>,
		"BBTYP":<xsl:value-of select="$quote"/><xsl:value-of select="BBTYP"/><xsl:value-of select="$quote"/>,
		"VERNR":<xsl:value-of select="$quote"/><xsl:value-of select="VERNR"/><xsl:value-of select="$quote"/>,
		"MTART":<xsl:value-of select="$quote"/><xsl:value-of select="MTART"/><xsl:value-of select="$quote"/>,
		"MATKL":<xsl:value-of select="$quote"/><xsl:value-of select="MATKL"/><xsl:value-of select="$quote"/>,
		"ATTYP":<xsl:value-of select="$quote"/><xsl:value-of select="ATTYP"/><xsl:value-of select="$quote"/>,
		"BASME":<xsl:value-of select="$quote"/><xsl:value-of select="BASME"/><xsl:value-of select="$quote"/>,
		"MHDHB":<xsl:value-of select="$quote"/><xsl:value-of select="MHDHB"/><xsl:value-of select="$quote"/>,
		"MHDRZ":<xsl:value-of select="$quote"/><xsl:value-of select="MHDRZ"/><xsl:value-of select="$quote"/>,
		"MHDLP":<xsl:value-of select="$quote"/><xsl:value-of select="MHDLP"/><xsl:value-of select="$quote"/>,
		"NTGEW":<xsl:value-of select="$quote"/><xsl:value-of select="NTGEW"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB09"> 
		,"VKDAB":<xsl:value-of select="$quote"/><xsl:value-of select="VKDAB"/><xsl:value-of select="$quote"/>,
		"VKDBI":<xsl:value-of select="$quote"/><xsl:value-of select="VKDBI"/><xsl:value-of select="$quote"/>,
		"MSTDE":<xsl:value-of select="$quote"/><xsl:value-of select="MSTDE"/><xsl:value-of select="$quote"/>,
		"MSTDV":<xsl:value-of select="$quote"/><xsl:value-of select="MSTDV"/><xsl:value-of select="$quote"/>,
		"PRDRU":<xsl:value-of select="$quote"/><xsl:value-of select="PRDRU"/><xsl:value-of select="$quote"/>,
		"ARANZ":<xsl:value-of select="$quote"/><xsl:value-of select="ARANZ"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB10"> 
		,"MTXID":<xsl:value-of select="$quote"/><xsl:value-of select="MTXID"/><xsl:value-of select="$quote"/>,
		"MAKTM":<xsl:value-of select="$quote"/><xsl:value-of select="MAKTM"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB12"> 
		,"EKGRP":<xsl:value-of select="$quote"/><xsl:value-of select="EKGRP"/><xsl:value-of select="$quote"/>,
		"LGRAD":<xsl:value-of select="$quote"/><xsl:value-of select="LGRAD"/><xsl:value-of select="$quote"/>,
		"EISBE":<xsl:value-of select="$quote"/><xsl:value-of select="EISBE"/><xsl:value-of select="$quote"/>,
		"MINBE":<xsl:value-of select="$quote"/><xsl:value-of select="MINBE"/><xsl:value-of select="$quote"/>,
		"MABST":<xsl:value-of select="$quote"/><xsl:value-of select="MABST"/><xsl:value-of select="$quote"/>,
		"AUSDT":<xsl:value-of select="$quote"/><xsl:value-of select="AUSDT"/><xsl:value-of select="$quote"/>,
		"SSTUF":<xsl:value-of select="$quote"/><xsl:value-of select="SSTUF"/><xsl:value-of select="$quote"/>,
		"PFLKS":<xsl:value-of select="$quote"/><xsl:value-of select="PFLKS"/><xsl:value-of select="$quote"/>,
		"LSTAB":<xsl:value-of select="$quote"/><xsl:value-of select="LSTAB"/><xsl:value-of select="$quote"/>,
		"LSTBI":<xsl:value-of select="$quote"/><xsl:value-of select="LSTBI"/><xsl:value-of select="$quote"/>,
		"LI_PROC_ST":<xsl:value-of select="$quote"/><xsl:value-of select="LI_PROC_ST"/><xsl:value-of select="$quote"/>,
		"DISMM":<xsl:value-of select="$quote"/><xsl:value-of select="DISMM"/><xsl:value-of select="$quote"/>,
		"SKTOF":<xsl:value-of select="$quote"/><xsl:value-of select="SKTOF"/><xsl:value-of select="$quote"/>,
		"DISPO":<xsl:value-of select="$quote"/><xsl:value-of select="DISPO"/><xsl:value-of select="$quote"/>,
		"ASORT":<xsl:value-of select="$quote"/><xsl:value-of select="ASORT"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB16"> 
		,"MWSKZ":<xsl:value-of select="$quote"/><xsl:value-of select="MWSKZ"/><xsl:value-of select="$quote"/>
		</xsl:for-each>

		<xsl:for-each select="E1WBB18"> 
		,"LAYGR":<xsl:value-of select="$quote"/><xsl:value-of select="LAYGR"/><xsl:value-of select="$quote"/>,
		"SORF1":<xsl:value-of select="$quote"/><xsl:value-of select="SORF1"/><xsl:value-of select="$quote"/>,
		"LAYVR":<xsl:value-of select="$quote"/><xsl:value-of select="LAYVR"/><xsl:value-of select="$quote"/>,
		"MELAY":<xsl:value-of select="$quote"/><xsl:value-of select="MELAY"/><xsl:value-of select="$quote"/>,
		"SHELF":<xsl:value-of select="$quote"/><xsl:value-of select="SHELF"/><xsl:value-of select="$quote"/>,
		"FACIN":<xsl:value-of select="$quote"/><xsl:value-of select="FACIN"/><xsl:value-of select="$quote"/>,
		"LMVER":<xsl:value-of select="$quote"/><xsl:value-of select="LMVER"/><xsl:value-of select="$quote"/>
			<xsl:for-each select="E1WBB18_EXT"> 
			,"FRONT":<xsl:value-of select="$quote"/><xsl:value-of select="FRONT"/><xsl:value-of select="$quote"/>,
			"VERAB":<xsl:value-of select="$quote"/><xsl:value-of select="VERAB"/><xsl:value-of select="$quote"/>,
			"VERBI":<xsl:value-of select="$quote"/><xsl:value-of select="VERBI"/><xsl:value-of select="$quote"/>,
			"MAXB":<xsl:value-of select="$quote"/><xsl:value-of select="MAXB"/><xsl:value-of select="$quote"/>,
			"PRABE":<xsl:value-of select="$quote"/><xsl:value-of select="PRABE"/><xsl:value-of select="$quote"/>
			</xsl:for-each>
		</xsl:for-each>
		
		<xsl:for-each select="E1WBB22"> 
		</xsl:for-each>
		
		<xsl:for-each select="E1WBBAH"> 
		,"HIER_ID":<xsl:value-of select="$quote"/><xsl:value-of select="HIER_ID"/><xsl:value-of select="$quote"/>,
		"NODE":<xsl:value-of select="$quote"/><xsl:value-of select="NODE"/><xsl:value-of select="$quote"/>,
		"GLTAB":<xsl:value-of select="$quote"/><xsl:value-of select="GLTAB"/><xsl:value-of select="$quote"/>
		</xsl:for-each>
		}
 		<xsl:if test="position() != last()">
         		<xsl:text>,</xsl:text>
        </xsl:if>
        
     
</xsl:for-each>	
]
}
</xsl:template>
</xsl:stylesheet>





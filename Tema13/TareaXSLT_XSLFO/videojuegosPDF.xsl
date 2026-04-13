<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:fo="http://www.w3.org/1999/XSL/Format">
  
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="hoja" margin="1cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      
      <fo:page-sequence master-reference="hoja">
        <fo:flow flow-name="xsl-region-body">
          <xsl:for-each select="steam/videojuego">
            <fo:block font-weight="bold" font-size="14pt">
              <xsl:value-of select="titulo"/>
            </fo:block>
            
            <fo:block font-size="11pt">
              Desarrollador: <xsl:value-of select="desarrollador"/>
            </fo:block>
            <fo:block font-size="11pt">
              Lanzamiento: <xsl:value-of select="lanzamiento"/>
            </fo:block>
            <fo:block font-size="11pt">
              Género: <xsl:value-of select="genero"/>
            </fo:block>
            <fo:block font-size="11pt">
              Plataforma: <xsl:value-of select="plataforma"/>
            </fo:block>
            <fo:block font-size="11pt">
              Calificación: +<xsl:value-of select="calificacion"/>
            </fo:block>
            
            <fo:block border-bottom="1pt solid black" space-after="10pt" space-before="5pt"/>
          </xsl:for-each>
          
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
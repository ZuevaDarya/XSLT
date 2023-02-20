<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
  <html>
      <head>
        <title>XSLT</title>
      </head>
    <body style="text-align: center;">
      <xsl:apply-templates/>
    </body>
  </html>
	</xsl:template>

  <xsl:template match="графика">
    <svg xmlns="http://www.w3.org/2000/svg" width="{@ширина}" height="{@высота}">
      <xsl:apply-templates/>
    </svg>
  </xsl:template>

  <xsl:template match="эллипс">
    <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
  </xsl:template>
</xsl:stylesheet>

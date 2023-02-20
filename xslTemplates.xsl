<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>XSLT</title>
        <style>
          body{
            text-align: center; 
            font-size: 30px;
            padding-top: 30px;
          }
        </style>
        <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
      </head>
      <body>
        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <xsl:apply-templates/>
        </math>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="строка">
    <mrow>
      <xsl:apply-templates/>
    </mrow>
  </xsl:template>

  <xsl:template match="операнд">
    <mi>
      <xsl:value-of select="."/>
    </mi>
  </xsl:template>

  <xsl:template match="оператор">
    <mo>
      <xsl:value-of select="."/>
    </mo>
  </xsl:template>

  <xsl:template match="корень">
    <msqrt>
      <xsl:apply-templates/>
    </msqrt>
  </xsl:template>

  <xsl:template match="дробь">
    <mfrac>
      <xsl:apply-templates/>
    </mfrac>
  </xsl:template>

  <xsl:template match="число">
    <mn>
      <xsl:value-of select="."/>
    </mn>
  </xsl:template>

  <xsl:template match="низверх">
    <munderover>
      <xsl:apply-templates/>
    </munderover>
  </xsl:template>

  <xsl:template match="верх">
    <msup>
      <xsl:apply-templates/>
    </msup>
  </xsl:template>

  <xsl:template match="низ">
    <msub>
      <xsl:apply-templates/>
    </msub>
  </xsl:template>
</xsl:stylesheet>
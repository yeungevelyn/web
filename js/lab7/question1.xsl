<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/result">
    <html>
      <head>
        <title>XSLT</title>
      </head>
      <body>
        <h1>Exam result</h1>
        <div>
          <font size="4">
            Reference number: <xsl:value-of select="@ref"/>
          </font>
        </div>
        <div>
          <font size="4">
            Exam number: <xsl:value-of select="examId"/>
          </font>
        </div>
        <div>
          <font size="4">
            Contestant number: <xsl:value-of select="contestantId"/>
          </font>
        </div>
        <div>
          <font size="4">
            Digital signature: <xsl:value-of select="digitalSignature"/>
          </font>
        </div>
        <div>
          <font size="4">
            Score: <xsl:value-of select="score"/>
          </font>
        </div>
        <div>
          <font size="4">
            Band: <xsl:value-of select="band"/>
          </font>
        </div>

      </body>
    </html>
  </xsl:template>









</xsl:stylesheet>

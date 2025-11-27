<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding ="UTF_8"/>
    <xsl:template match="/result">
      <html>
        <head></head>
        <body>
          <h1>Exam result</h1>
          <div>Reference number: <xsl:value-of select="@ref"/></div>
          <div>Exam number:<xsl:value-of select="examId"/></div>
          <div>Contestant number:<xsl:value-of select="contestantId"/></div>
          <div>Digital signature:<xsl:value-of select="digitalSignature"/></div>
          <div>Score: <xsl:value-of select="score"/></div>
          <div>Band: <xsl:value-of select="band"/></div>
        </body>
      </html>
    </xsl:template>

</xsl:stylesheet>

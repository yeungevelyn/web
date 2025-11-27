<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/audit">
    <html>
      <head>
        <title>XSLT</title>
      </head>
      <body>
        <h1>Enrolment statistics</h1>
        <div>
          <b>Campus: </b>  <xsl:value-of select="@campus"/>
        </div>
        <div>
          <b>Year: </b>  <xsl:value-of select="@year"/>
        </div>
        <div>
          <b>Session: </b>  <xsl:value-of select="@session"/>
        </div>
        <br/>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Subject</th>
            <th>Enrol</th>
            <th>Withdrawn</th>
          </tr>

          <xsl:for-each select="subject">
          <tr>
            <td>
              <xsl:value-of select="@sid"/>
            </td>
            <td>
              <xsl:value-of select="code"/>
              <xsl:text>:</xsl:text>
              <xsl:value-of select="title"/>
            </td>
            <td>
              <xsl:for-each select="statistics">
                <xsl:value-of select="enrol"/>
              </xsl:for-each>
            </td>
            <td>
              <xsl:for-each select="statistics">
                <xsl:value-of select="withdrawn"/>
              </xsl:for-each>
            </td>
          </tr>
          </xsl:for-each>


        </table>
      </body>
    </html>
  </xsl:template>









</xsl:stylesheet>

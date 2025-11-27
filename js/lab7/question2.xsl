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
        <style>
          .answer{
            color:maroon;
            border-style:dotted;
            padding:10px;
          }
          .question{
            color:grey;
            text-align:right;
            border-style:dotted;
            padding:10px;
          }
          #table{
            border-style:solid;
            border-width:2px;
            padding:2px;
          }
        </style>
      </head>

      <body>
        <h1>Exam result</h1>
        <table id="table">
          <tr>
            <td class="question">Reference number:</td>
            <td class="answer">
              <xsl:value-of select="@ref"/>
            </td>
          </tr>
          <tr>
            <td class="question">
              Exam number
            </td>
            <td class="answer">
              <xsl:value-of select="examId"/>
            </td>
          </tr>
          <tr>
            <td class="question">
              Contestant number
            </td>
            <td class="answer">
              <xsl:value-of select="contestantId"/>
            </td>
          </tr>
          <tr>
            <td class="question">
              Digital signature
            </td>
            <td class="answer">
              <xsl:value-of select="digitalSignature"/>
            </td>
          </tr>
          <tr>
            <td class="question">
              Score
            </td>
            <td class="answer">
              <xsl:value-of select="score"/>
            </td>
          </tr>
          <tr>
            <td class="question">
              Band
            </td>
            <td class="answer">
              <xsl:value-of select="band"/>
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>









</xsl:stylesheet>

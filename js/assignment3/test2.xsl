<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xml:output method="xml" version="1.0" encoding="UTF-8"/>
    <xsl:template match="/result">

      <html>
        <head>
          <style>
          .answer{
            color:maroon;
            border-style:dotted;
            padding:10px;
            }
            table {
            border-style:solid;
            }
            .ask{
            color:grey;
            border-style:dotted;
            padding:10px;
            }
          </style>
        </head>

        <body>
          <h1>Exam result</h1>
          <table>
            <tr>
              <td class="ask">
                Reference number
              </td>
              <td class="answer">
                <xsl:value-of select="@ref"/>
              </td>
            </tr>
            <tr>
              <td class="ask">
                Exam number
              </td>
              <td class="answer">
                <xsl:value-of select="examId"/>
              </td>
            </tr>
            <tr>
              <td class="ask">
                Contestant number
              </td>
              <td class="answer">
                <xsl:value-of select="contestantId"/>
              </td>
            </tr>
            <tr>
              <td class="ask">
                Digital signature
              </td>
              <td class="answer">
                <xsl:value-of select="digitalSignature"/>
              </td>
            </tr>
            <tr>
              <td class="ask">
                Score
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

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <xsl:copy>
            <html>
                <head>
                    <title>Mountains</title>
                </head>

                <body>
                    <xsl:for-each select="Mountain_Catalog/Mountain">
                        <h1><xsl:value-of select="Name"/></h1>
                        <p>
                            <xsl:value-of select="Geological_Construction"/>
                        </p>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>Height</th>
                            </tr>
                            <xsl:for-each select="Peaks/Peak">
                            <tr>
                                <td><xsl:value-of select="Name"/></td>
                                <td><xsl:value-of select="Height"/></td>
                            </tr>
                            </xsl:for-each>
                        </table>

                        <hr/>
                    </xsl:for-each>
                </body>
            </html>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
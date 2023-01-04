<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="mountains.dtd"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
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
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table, th, tr, td{
                        border: solid 1px black;
                        border-collapse: collapse;
                    }
                    
                    td{
                        padding: 20px;
                        text-align: center;
                    }
                    
                    tr:hover{
                        background-color:grey;
                        color: white;
                    }

                </style>
            </head>
            <body>
                <h1>Lista de videojuegos</h1>
                
                <h2>Videojuegos multiplataforma</h2>
                <table>
                    <tr style="background-color:orange">
                        <th>Título</th>
                        <th>Desarrollador</th>
                        <th>Año de lanzamiento</th>
                        <th>Género</th>
                        <th>Plataforma</th>
                        <th>Calificacion</th>
                        <th>Edad Mínima</th>
                    </tr>
                    <xsl:for-each select="steam/videojuego">
                        <xsl:sort select="lanzamiento" order="descending"/>
                        <xsl:if test="plataforma='Multiplataforma'">
                            <tr>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="desarrollador"/></td>
                                <td><xsl:value-of select="lanzamiento"/></td>
                                <td><xsl:value-of select="genero"/></td>
                                <td><xsl:value-of select="plataforma"/></td>
                                <td><xsl:value-of select="calificacion"/></td>
                                <xsl:choose>
                                    <xsl:when test="calificacion>=16">
                                        <td>Debes ser mayor de 16 años</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>Puedes jugar con cualquier edad</td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                
                <h2>Videojuegos PC</h2>
                <table>
                    <tr style="background-color:cyan">
                        <th>Título</th>
                        <th>Desarrollador</th>
                        <th>Año de lanzamiento</th>
                        <th>Género</th>
                        <th>Plataforma</th>
                        <th>Calificacion</th>
                        <th>Edad Mínima</th>
                    </tr>
                    <xsl:for-each select="steam/videojuego">
                        <xsl:sort select="lanzamiento" order="descending"/>
                        <xsl:if test="plataforma='PC'">
                            <tr>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="desarrollador"/></td>
                                <td><xsl:value-of select="lanzamiento"/></td>
                                <td><xsl:value-of select="genero"/></td>
                                <td><xsl:value-of select="plataforma"/></td>
                                <td><xsl:value-of select="calificacion"/></td>
                                <xsl:choose>
                                    <xsl:when test="calificacion>=16">
                                        <td>Debes ser mayor de 16 años</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>Puedes jugar con cualquier edad</td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                
                <h2>Videojuegos Consola</h2>
                <table>
                    <tr style="background-color:pink">
                        <th>Título</th>
                        <th>Desarrollador</th>
                        <th>Año de lanzamiento</th>
                        <th>Género</th>
                        <th>Plataforma</th>
                        <th>Calificacion</th>
                        <th>Edad Mínima</th>
                    </tr>
                    <xsl:for-each select="steam/videojuego">
                        <xsl:sort select="lanzamiento" order="descending"/>
                        <xsl:if test="plataforma!='Multiplataforma' and plataforma!='PC'">
                            <tr>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="desarrollador"/></td>
                                <td><xsl:value-of select="lanzamiento"/></td>
                                <td><xsl:value-of select="genero"/></td>
                                <td><xsl:value-of select="plataforma"/></td>
                                <td><xsl:value-of select="calificacion"/></td>
                                <xsl:choose>
                                    <xsl:when test="calificacion>=16">
                                        <td>Debes ser mayor de 16 años</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>Puedes jugar con cualquier edad</td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
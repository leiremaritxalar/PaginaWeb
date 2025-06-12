<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">

    <html>
      <head>
        <title>Datos de Usuario y Análisis</title>
        <link rel="stylesheet" href="Usuarios.css" />
      </head>
      <body>
        <div class="xml-content">

          <h1>Información del Especialista</h1>
          <table border="1">
            <tr>
              <th>ID del Especialista</th>
              <th>Campo de especialidad</th>
            </tr>
            <xsl:for-each select="Sistema/Usuarios/Usuario">
              <tr>
                <td><xsl:value-of select="IDdoctor"/></td>
                <td><xsl:value-of select="Especialista"/></td>
              </tr>
            </xsl:for-each>
          </table>

          <h1>Información sobre los pacientes</h1>
          <table border="1">
            <tr>
              <th>ID Paciente</th>
              <th>Foto</th>
              <th>Número de Parásitos</th>
              <th>Malaria</th>
              <th>Fecha</th>
            </tr>
            <xsl:for-each select="Sistema/Analisis/Entrada">
              <tr>
                <td><xsl:value-of select="IDPaciente"/></td>
                <td>
                  <img>
                    <xsl:attribute name="src">
                      <xsl:value-of select="Imagen"/>
                    </xsl:attribute>
                    <xsl:attribute name="width">100</xsl:attribute>
                  </img>
                </td>
                <td><xsl:value-of select="NumeroParasitos"/></td>
                <td><xsl:value-of select="Malaria"/></td>
                <td><xsl:value-of select="Fecha"/></td>
              </tr>
            </xsl:for-each>
          </table>

        </div>
      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>

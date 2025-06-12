<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <div class="xml-content">
      <h1>Información del Usuario</h1>
      <table>
        <tr>
          <th>Nombre</th>
          <th>Apellido</th>
        </tr>
        <tr>
          <td><xsl:value-of select="Usuarios/Usuario/Nombre"/></td>
          <td><xsl:value-of select="Usuarios/Usuario/Apellido"/></td>        
        </tr>
      </table>

      <h1>Análisis de Imágenes</h1>
      <table>
        <tr>
          <th>ID Paciente</th>
          <th>Foto</th>
          <th>Número de Parásitos</th>
		  <th>Malaria</th>
          <th>Fecha</th>
        </tr>
        <xsl:for-each select="Usuarios/Analisis/Entrada">
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
  </xsl:template>

</xsl:stylesheet>

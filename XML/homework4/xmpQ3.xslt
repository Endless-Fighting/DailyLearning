<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:element name="results">
			<xsl:apply-templates select="/bib/book"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="book">
		<xsl:element name="result">
			<xsl:copy-of select="title"/>
			<xsl:copy-of select="author"/>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>

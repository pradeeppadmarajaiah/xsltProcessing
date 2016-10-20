<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>Employee List</h2>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="employee">
		<p>
			<xsl:apply-templates select="name" />
			<xsl:apply-templates select="role" />
			<xsl:apply-templates select="division" />
			<xsl:apply-templates select="payrollType" />
		</p>
	</xsl:template>

	<xsl:template match="name">
		Name :
		<span style="color:#ff0000">
			<xsl:value-of select="." />
		</span>
		<br />
	</xsl:template>

	<xsl:template match="role">
		Role :
		<span style="color:#00ff00">
			<xsl:value-of select="." />
		</span>
		<br />
	</xsl:template>

	<xsl:template match="division">
		Division :
		<span style="color:#ff0000">
			<xsl:value-of select="." />
		</span>
		<br />
	</xsl:template>

	<xsl:template match="payrollType">
		Pay Roll Type :
		<span style="color:#00ff00">
			<xsl:value-of select="." />
		</span>
		<br />
	</xsl:template>

</xsl:stylesheet>


<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<!-- Defining new line variable globally -->
	<xsl:key name="roll-search" match="employee" use="role" />
	<xsl:variable name="newline">
		<xsl:text>&#xa;</xsl:text>
	</xsl:variable>
	<!-- Match the root -->
	<xsl:template match="/">
		<html>
			<head>
				<!-- Using Axes relationship to fetch the comments -->
				<title>
					<xsl:value-of select="/company/employee/preceding-sibling::comment()" />
				</title>
			</head>
			<body>
				<table border="1">
					<tr>
						<th>Employee Id</th>
						<th>Name</th>
						<th>Role</th>
						<th>Division</th>
						<th>Payroll Type</th>
					</tr>
					<!-- Using the new line variable defined. -->
					<xsl:value-of select="$newline" />
					<xsl:value-of select="$newline" />
					<!-- Loop for employees -->
					<!-- Or Loop with condtion -->
					<!-- <xsl:for-each select="key('roll-search', 'Permanent')"> -->
					<xsl:for-each select="company/employee">

						<!-- Sort employee by name -->
						<xsl:sort select="name" />
						<xsl:if test="payrollType = 'Permanent'">

							<tr>
								<td>
									<xsl:value-of select="@id" />
								</td>
								<td>
									<xsl:value-of select="name" />
								</td>
								<xsl:choose>
									<xsl:when test="role = 'Manager'">
										<td>
											<strong>
												<xsl:value-of select="role" />
											</strong>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td>
											<xsl:value-of select="role" />
										</td>
									</xsl:otherwise>
								</xsl:choose>
								<td>
									<xsl:value-of select="division" />
								</td>
								<td>
									<xsl:value-of select="payrollType" />
								</td>
							</tr>

						</xsl:if>
						<xsl:value-of select="$newline" />
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
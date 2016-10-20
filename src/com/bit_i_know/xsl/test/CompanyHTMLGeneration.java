package com.bit_i_know.xsl.test;

import java.io.File;

import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class CompanyHTMLGeneration {
	public static void main(String[] args) {
		try {
			TransformerFactory.newInstance().newTransformer(new StreamSource(new File("company_html.xsl")))
					.transform(new StreamSource(new File("company.xml")), new StreamResult(new File("company.html")));
			TransformerFactory.newInstance().newTransformer(new StreamSource(new File("company_html_V2.xsl")))
					.transform(new StreamSource(new File("company.xml")), new StreamResult(new File("company2.html")));
			System.out.println("Company.html file generated successfully");
		} catch (TransformerException | TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		}
	}

}

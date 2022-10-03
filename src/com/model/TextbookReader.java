package com.model;

import java.io.File;
import java.io.IOException;

import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;

public class TextbookReader {
	private String text="";
	private String stemming="";
	private String category="";
	
	public String ReadBook(String url)
	{
		try
		{
		PdfReader reader=new PdfReader(url);
		int n=reader.getNumberOfPages();
		for(int i=1;i<30;i++)
		{
		text+=PdfTextExtractor.getTextFromPage(reader, i);
		}
		reader.close();
		
		}catch(IOException e)
		{
			e.printStackTrace();
		}
		if(Stemmer.TextMining(text)=="java")
		{
			category="java";
		}
		else if(Stemmer.TextMining(text)=="dotnet")
		{
			category="dotnet";
		}
		else if(Stemmer.TextMining(text)=="php")
		{
			category="php";
		}
		else if(Stemmer.TextMining(text)=="python")
		{
			category="python";
		}
		else
		{
			category="others";
		}
		return category;
	}

}

package com.controler;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import com.model.TextbookReader;

public class UploadAction {
	private String category;
	TextbookReader textbookReader;
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	private String destpath="";
	private File file;
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	private String fileContentType;
	private String fileFileName;
    public String execute()
    {
    	textbookReader=new TextbookReader();
    	String url=file.getAbsolutePath();
    	setCategory(textbookReader.ReadBook(url));
    	destpath="D:/temp/"+getCategory();
    	try
    	{
    	File dest=new File(destpath,fileFileName);
    	FileUtils.copyFile(file, dest);
       	}catch(IOException ex)
    	{
    		System.err.println(ex.getMessage());
    		return "error";
    	}
    	return "success";
    	
    }
}

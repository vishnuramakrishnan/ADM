package com.controler;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport
{
        private InputStream fileInputStream;
        // Used to set file name dynamically
        private String fileName;
        private String fname;
        private String cname;
        public String getCname() {
			return cname;
		}

		public void setCname(String cname) {
			this.cname = cname;
		}

		public String getFname() {
			return fname;
		}

		public void setFname(String fname) {
			this.fname = fname;
		}

		public InputStream getFileInputStream() 
        {
                return fileInputStream;
        }

        public String execute() throws Exception 
        {
                File fileToDownload = new File("D:/temp/"+getCname()+"/"+getFname());
                fileName = fileToDownload.getName();
                fileInputStream = new FileInputStream(fileToDownload);
                return SUCCESS;
        }

        public String getFileName() 
        {
                return fileName;
        }

        public void setFileName(String fileName) 
        {
                this.fileName = fileName;
        }       
}
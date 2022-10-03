package com.model;

import java.util.Arrays;
import java.util.HashMap;

public class Frequency {

    private class Word implements Comparable<Word>{
        String word;
        int count;
        public Word(String word, int count) {
            this.word = word;
            this.count = count;
        }
        public int compareTo(Word otherWord) {
            if(this.count==otherWord.count){
                return this.word.compareTo(otherWord.word);
            }
            return otherWord.count-this.count;
        }
    }

    private Word[] getFrequentWords(String words[]){
        HashMap<String,Word> map = new HashMap<String,Word>();
        for(String s:words){
            Word w = map.get(s);
            if(w==null)
                w = new Word(s,1);
            else
                w.count++;
            map.put(s, w);
        }
        Word[] list = map.values().toArray(new Word[]{});
        Arrays.sort(list);
        return list;
    }

    public  String Disp(String text) {
    	String result="";
        int i=0,j=0;
        String words[] = text.split("@");
        Word[] frequency = new Frequency().getFrequentWords(words);
        for(Word w:frequency){
             if(i==0){
            	 j=w.count;            	
            	 i=1;
            	 }
          //  if(j==w.count && j!=1){
             if(w.count>1){
          result = result+ w.word+" ";
           //result+="\n";           
        //  System.out.println("????????"+result);
             }
           //break;
        }
		return result;
    }

}
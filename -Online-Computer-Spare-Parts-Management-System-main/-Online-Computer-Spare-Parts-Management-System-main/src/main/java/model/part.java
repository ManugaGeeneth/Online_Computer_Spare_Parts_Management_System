package model;

public class part extends user {
    private String cpu;
    private String vcard;  
    private String mem;    
    private String mboard; 
    private String cool;   
    private String ssd;    

   
    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    
    public String getVcard() {
        return vcard;
    }

    public void setVcard(String vcard) {
        this.vcard = vcard;
    }

    
    public String getMem() {
        return mem;
    }

    public void setMem(String mem) {
        this.mem = mem;
    }

    
    public String getMboard() {
        return mboard;
    }

    public void setMboard(String mboard) {
        this.mboard = mboard;
    }

  
    public String getCool() {
        return cool;
    }

    public void setCool(String cool) {
        this.cool = cool;
    }

    public String getSsd() {
        return ssd;
    }

    public void setSsd(String ssd) {
        this.ssd = ssd;
    }

   
}

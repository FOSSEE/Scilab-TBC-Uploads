
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
Long=90.0;//longitude in degrees
GST=9+15.0/60+14.0/3600;//GST in hr
LST=31+35.0/60+12.0/3600;//LST in hr
//calculation
LMM=GST-Long/15*9.8565/3600;
LMT=LST-LMM-(LST-LMM)*9.8296/3600;
LMT=degtodms(LMT-12)
disp(LMT,"LMT in hr min sec (PM)");
clear()

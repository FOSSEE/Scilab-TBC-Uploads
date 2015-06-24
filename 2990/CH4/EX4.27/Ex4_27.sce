
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
Long=75.0;//longitude in degrees
GST=11+45.0/60+10.0/3600;//GSt in hr
LST=26+35.0/60+42.0/3600;//LST in hr
//calculation
LMM=GST+Long/15*9.8565/3600;
LMT=LST-LMM-(LST-LMM)*9.8296/3600;
LMT=degtodms(LMT-12)
disp(LMT,"LMT in hr min sec (PM)");
clear()

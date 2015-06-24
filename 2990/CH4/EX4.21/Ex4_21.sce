
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
Long=56+35.0/60;//Longitude in degrees
LMT=7+15.0/60+25.0/3600;//LMT in hr
GMN=3.0/60+54.0/3600;//GMT in hr
//calculation
GMT=LMT-Long/15.0;
e1=GMN+(12-GMN)*0.25/3600;
LAT=GMT+Long/15.0+e1;
LAT=degtodms(LAT);
disp(LAT,"LAT in hr min sec");
clear()

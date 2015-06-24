
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
Long=75;//Longitude in degrees
GMT=6+18.0/60+20.0/3600;//GMT in hr
LST=10+25.0/60+15.0/3600;//LST in hr
//calculation
LMT=GMT+Long/15*9.8296/3600;
LST=LST-9.8296/3600*LST;
LMT=LMT+LST;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec ");
clear()

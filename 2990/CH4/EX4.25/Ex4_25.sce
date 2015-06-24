
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
GST=15+55.0/60+13.0/3600;//GST in hr
LMT=11.0;//LMT in hr
//calculation
LST=GST+Long/15.0*9.8565/3600+LMT+9.8565/3600*LMT;
LST=LST-24;
LST=degtodms(LST);
disp(LST,"LST of next day in deg min sec");
clear()


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
Long=60.0;//longitude in derees east
LHA=5+30.0/60+20.0/3600;//local hour angle in hr
//calculation
LMT=LHA+12;
GMT=LMT-Long/15;
GMT=degtodms(GMT);
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
disp(GMT,"GMT in hr min sec");
clear()

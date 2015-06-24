
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
Long=45.0;//longitude in degrees
E=11+55.0/60+5.0/3600-1.5/6*17.0/3/3600;//E in hr
//calculation
GMT=14+40.0/60+Long/15.0;
GHA=GMT+E;
LHA=GHA-24-Long/15;
LHA=degtodms(LHA);
disp(LHA,"LHA of the sun in hr min sec");
clear()

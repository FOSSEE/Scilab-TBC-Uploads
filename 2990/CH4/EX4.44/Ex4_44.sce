
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
E=11+55.0/60+24.0/3600+0.5/3600*(2+40.0/60+21.2/3600);//E in hr
GHA=8+35.0/60+45.2/3600;//GHA in hr
//calculation
GMT=GHA+24-E;
GMT=degtodms(GMT);
disp(GMT,"GMT in hr min sec");
clear()

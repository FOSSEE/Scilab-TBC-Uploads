
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
//part1
LMT=8+30.0/60+15.0/3600;//in hr
Long=45+30.0/60;//longitude in degrees
//calculation
GMT=LMT+Long/15.0;
GMT=degtodms(GMT);
disp(GMT,"GMT in hr min sec (AM)");
//part2
LMT=6+40.0/60+10.0/3600;//in hr
Long=55+30.0/60;//longitude in degrees
//calculation
GMT=LMT-Long/15.0;
GMT=degtodms(GMT);
disp(GMT,"GMT in hr min sec (PM)");
clear()

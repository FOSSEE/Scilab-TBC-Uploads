
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
GMT=20+30.0/60+15.0/3600;//GMT in hrs
Long=82+30.0/60;//longitude in degrees east
//calculation
LMT=GMT+Long/15.0-24;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec (next day)");
//part2
GMT=20+30.0/60+15.0/3600;//GMT in hrs
Long=120.0;//longitude in degrees west
//calculation
LMT=GMT-Long/15.0;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec (same day)");
clear()

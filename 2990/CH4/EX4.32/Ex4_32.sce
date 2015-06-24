
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
Long=60;//longitude in degrees
GMT=11+15.0/60+20.0/3600;//GMT in hr
//calculation
LMT=GMT-Long/15*9.8296/3600;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec ");
//part2
Long=45;//Longitude in degrees
GMT=11+15.0/60+20.0/3600;//GMT in hr
//calculation
LMT=GMT+Long/15*9.8296/3600;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
clear()

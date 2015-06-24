
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
LHA=6+30.0/60+10.0/3600;//local hour angle in hr
//calculation
LAT=LHA+12;
LAT=degtodms(LAT);
disp(LAT,"LAT in hr min sec");
//part2
LHA=18+40.0/60+20.0/3600;//local hour angle in hr
//calculation
LAT=LHA+12-24;
LAT=degtodms(LAT);
disp(LAT,"LAT in hr min sec");
clear()

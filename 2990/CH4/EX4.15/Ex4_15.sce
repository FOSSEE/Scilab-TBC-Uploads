
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
RA=6+15.0/60+20.0/3600;//RA in hr
HA=8+10.0/60+30.0/3600;//hour angle in hr
//calculation
LST=RA+HA;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
//part2
RA=8+40.0/60+15.0/3600;//RA in hr
HA=3+50.0/60+20.0/3600;//hour angle in hr
//calculation
LST=RA-HA;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
clear()

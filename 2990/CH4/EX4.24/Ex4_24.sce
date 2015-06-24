
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
Long=140+35.0/60+20.0/3600;//longitude in degrees
GST=13+15.0/60+30.0/3600;//GST in hr
//calculation
LST=GST+9.8565/3600*Long/15.0;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
//part2
Long=160+45.0/60+30.0/3600;
GST=13+15.0/60+30.0/3600;
//calculation
LST=GST-9.8565/3600*Long/15.0;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
clear()

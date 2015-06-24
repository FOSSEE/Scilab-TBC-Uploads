
funcprot(0);
// Initialization of Variable
//Part A
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
GST=7+35.0/60+40.0/3600;//GSt in hr
//calculation
GMT=24-GST-(24-GST)*9.8296/3600;
GMT=degtodms(GMT);
disp(GMT,"GMT in hr min sec");
//Part B
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
//part1
Long=120.0;//longitude in degrees
GMT=12+3.0/60+24.6/3600;//GMT in hr
//calculation
LMT=GMT-17.8/24*Long/15.0/3600;
LMT=degtodms(LMT);
disp(LMT,"LMT of LAN in hr min sec");
//part2
Long=45;//Longitude in degrees
GMT=12+3.0/60+24.6/3600;//GMT in hr
//calculation
LMT=GMT+17.8/24*Long/15.0/3600;
LMT=degtodms(LMT);
disp(LMT,"LMT of LAN in hr min sec");
clear()

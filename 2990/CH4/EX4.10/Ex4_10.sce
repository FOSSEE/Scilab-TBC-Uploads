
clc();
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100;
    if sd==60.0 then
        sd=0;
        m=m+1;
    end
    dms=[d m sd]
endfunction
//part1
delta=38+15.0/60;//declination of star M1 in degrees in North
theta=25+10.0/60;//latitude in degrees in North
//calculation
z=delta-theta;
alpha=90-z;
z=degtodms(z);
alpha=degtodms(alpha);
disp(z,"zenith distance in deg min sec");
disp(alpha,"altitude in deg min sec");
//part2
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100;
    if sd==60.0 then
        sd=0;
        m=m+1;
    end
    dms=[d m sd]
endfunction
delta=22+40.0/60;//declination of star M2 in degrees in North
theta=25+10.0/60;//latitude in degrees in North
//calculation
z=-delta+theta;
alpha=90-z;
z=degtodms(z);
alpha=degtodms(alpha);
disp(z,"zenith distance in deg min sec");
disp(alpha,"altitude in deg min sec");
//part3
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    if sd==60.0 then
        sd=0;
        m=m+1;
    end
    dms=[d m sd]
endfunction
delta=70+20.0/60;//declination of star M3 in degrees in North
theta=25+10.0/60;//latitude in degrees in North
//calculation
z=delta-theta;
z=degtodms(z);
disp(z,"zenith distance in deg min sec");
clear()


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
M=82+30/60;//standard meridian in degrees
L1=110;//longitutde in degrees east
ST=18+35.0/60+10.0/3600//standard time in hr
//calculation
LMT=ST+(L1-M)/15.0;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
//part2
L2=30;//longitutde in degrees west
ST=18+35.0/60+10.0/3600//standard time in hr
//calculation
LMT=ST-(M+L2)/15.0;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
//part3
L3=30;//longitutde in degrees east
ST=18+35.0/60+10.0/3600//standard time in hr
//calculation
LMT=ST-(M-L3)/15.0;
LMT=degtodms(LMT);
disp(LMT,"LMT in hr min sec");
clear()

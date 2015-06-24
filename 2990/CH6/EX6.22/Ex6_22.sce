
clc; funcprot(0);
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
f=150.4;//focal length in mm
xc=-32.43;//coordinate in mm
xd=9.52;//coordinate in mm
//calculation
thc=atan(xc/f);
thd=atan(xd/f);
th=thd-thc;
th=th*180/%pi;
Az=325+15.0/60+th;
Az=degtodms(Az);
disp(Az,"Azimuth of D in deg,min,sec respectively")
disp("the answer differs slightly due to round off error")
clear()

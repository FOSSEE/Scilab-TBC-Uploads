
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=(round(sd*100)/100)
      dms=[d m sd]
endfunction
del1=75+14.0/60+20.0/3600;//declination in degrees
del2=70+12.0/60+30.0/3600;//declination in degrees
d=del1-del2;//difference in degrees
//calculation
k=cos(del1*%pi/180)/cos(del2*%pi/180);
A2=%pi/2-atan((cos(d*%pi/180)-k)/sin(d*%pi/180));
A2=A2*180/%pi;
A2=120+15.0/60+10.0/3600-A2;
CR=360-A2;
A2=degtodms(A2);
CR=degtodms(CR);
disp(A2,"azimuth of angle R in degree,minites,seconds respectively");
disp(CR,"true bearing of CR in degree,minites,seconds respectively");
clear()

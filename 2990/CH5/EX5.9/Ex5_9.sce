
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
a=26.0/60+51.0/3600;//angle in degrees
p=56.0/60+5.1/3600//polar distance
//calculation
H=acos(a/p);
A=p*sin(H)/cos(30.75694*%pi/180);
CR=25+35.0/60+40.0/3600-A;
CR=degtodms(CR);
disp(CR,"azimuth of angle CR in degree,minites,seconds respectively");
disp("answer varies slightly due to round off error")
clear()

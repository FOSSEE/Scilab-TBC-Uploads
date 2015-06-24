
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
ZP=37+29.0/60+40.0/3600//colatitde in degrees
ZM=56+24.0/60+50.0/3600//coaltitude in degrees
PM=67+54.0/60+24.0/3600//codeclination in degrees
//calculation
A1=acos((cos(PM*%pi/180)-cos(ZP*%pi/180)*cos(ZM*%pi/180))/(sin(ZP*%pi/180)*sin(ZM*%pi/180)));
A1=A1*180/%pi;
A=360-A1;
A=degtodms(A);
disp(A,"azimuth of sun in degree,minites,seconds respectively");
clear()

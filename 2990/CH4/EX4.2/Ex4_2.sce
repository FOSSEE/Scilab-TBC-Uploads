
clc; funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
LongA=52+24.0/60;//longtitude in degrees
LongB=55+30.0/60;//longtitude in degrees
latA=18+10.0/60;//latitude in degrees
latB=15.0;//latitude in degrees
R=6370.0;//radius of earth
pi=3.14;
//calculation
P=LongB-LongA;
PA=90-latA;
PB=90-latB;
AB=acos(cos(PB*%pi/180)*cos(PA*%pi/180)+sin(PB*%pi/180)*sin(PA*%pi/180)*cos(P*%pi/180));
dis=AB*R;
//solving for A
a=[0.5,0.5;0.5,-0.5];
b=[atan(cos((PB/2-PA/2)*%pi/180)/tan(P*%pi/180)/cos((PB/2+PA/2)*%pi/180))*180/%pi;atan(sin((PB/2-PA/2)*%pi/180)/tan(P*%pi/180)/sin((PB/2+PA/2)*%pi/180))*180/%pi];
x=linsolve(a,-b);
x=degtodms(x(1));
disp(round(dis*100)/100,"distance of AB in Km");
disp(x,"direction of B to A in deg min sec towards east is:");
clear()

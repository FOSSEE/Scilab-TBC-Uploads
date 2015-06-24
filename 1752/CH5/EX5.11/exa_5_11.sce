//Exa 5.11
clc;
clear;
close;
//given data
delta=15.68*10^-6;// in m^2/s
t_infinite=25+273;// in K
t_s=80+273;// in K
t_infinite=25+273;// in K
k=0.02625;// in W/m degree C
Pr=0.708;
miu_infinite=1.846*10^-5;//in kg/ms
miu_s= 2.076*10^-5;// in kg/ms
d=10*10^-3;// in m
V=5;// in m/s
A=4*%pi*(d/2)^2;
Re=V*d/delta;
Nu= 2+ (0.4*Re^(1/2)+0.06*Re^(2/3))*Pr^0.4*(miu_infinite/miu_s)^(1/4);
// Nu = h*d/k
h=Nu*k/d;// in W/m^2K
// heat transfer rate
q=h*A*(t_s-t_infinite);// in watt
disp(q,"Heat transfer rate in watt")
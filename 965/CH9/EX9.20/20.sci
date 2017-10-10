clc;
clear all;
disp("cylindrical drum")
d=0.35;// m diameter
ts=80;// degree C
rhol=956.4;//kg/m^3
k=68.23*10^(-2);//W/m.C
mu=283*10^(-6);// kg/ms
hfg=2201.6*10^3;// J/kg
vg=0.885;// m^3/kg
rhov=1/vg;//kg/m^3
g=9.81;// m/s
m=70/3600;// kg/s
tsat=120.2;// degree C
disp("delL=(4*k*mu*(tsat-ts)*L/(g*rhol*(rhol-rhov)*hfg))^0.25")
a=(4*k*mu*(tsat-ts)/(g*rhol*(rhol-rhov)*hfg))^0.25
disp("delL=a*L^0.25")
disp("hL=4*k/(3*delL)")
b=1.2*4*k/(3*a)//hl=b*L^(-0.25)
//Q=h*%pi*d*L*(tsat-ts)
Q=m*hfg;
L=(Q/(b*%pi*d*(tsat-ts)))^(4/3);
disp("mm",L*1000,"length of drum =")
delL=(4*k*mu*(tsat-ts)*L/(g*rhol*(rhol-rhov)*hfg))^0.25;
disp("mm",delL,"Thickness of condensate layer =")
Re=4*m/(mu*d);
disp(Re,"Re =")


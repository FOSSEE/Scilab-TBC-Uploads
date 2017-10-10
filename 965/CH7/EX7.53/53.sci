clc;
clear all;
disp("temperature of mixed sand")
m=0.08/3600;// m^3/s sand feeding rate
d=30/1000;// pipe diameter
L=6;//m legth of pipe
ts=100;// degree C inside temperature of pipe
rho=1500;// kg/m^3
k=0.3;// W/m.C
cp=840;// J/kg.K
ta=20;//degree C temperature of sand entering
disp("Q=h*A*(ts-(ti+to)/2)=m*cp*(to-ti)")
disp("h*A/2*((ts-ti)+(ts-to))= m*cp*((ts-ti)-(ts-to))")
m=m*rho//kg/sec
Nu=5.78;
h=Nu*k/d;
disp("W/m^2.C",h,"Heat transfer coefficient =")
A=%pi*d*L;// m^2
t=(m*cp-h*A/2)*(ts-ti)/(h*A/2+m*cp);
to=ts-t;
disp("degree C",to," temperature of mixed sand =")


clc;
clear all;
disp("bulk temperature increase")
p=2*10^5;// Pa pressure of air
d=30/1000;//m tube diameter
U=10;//m/s
tw=100;//degree C wall temperature
mu=20.6*10^(-6);// Ns/m^2
Pr=0.694;
cp=1009;// J/kg.C
k=0.0297;// kg/m.C
ti=40;//degree C air temperature
rho=p/(287*(ti+273));// kg/m^3
Re=rho*U*d/mu;
Nu=0.023*Re^0.8*Pr^0.4;
h=Nu*k/d
disp("Q=h*A*(AMTD)=m*cp*(to-ti)")
disp("where AMTD = (tw-(ti+to)/2)")
A=%pi*d*1;// m^2
m=%pi*d^2*U*rho/4// kg/s
to=(h*A*(tw-ti/2)+m*cp*ti)/(m*cp+h*A/2);
disp("degree C",to,"Thus rise in bulk temperature of air =")
Q=m*cp*(to-ti);
disp("W/m",Q,"heat transefer rate =")





clc;
clear all;
disp("required tube length")
ti=20;//degree C temperature of water
m= 0.015;//kg/s water flow rate
t=90;//degree C temperature of tube
d=2.5/100;// m ID of tube
to=70;// degree C  
tb=(ti+to)/2;// bulk temperature
Nu=3.657;
rho=992.3;// kg/m^3
cp=4180;// J/kg.K
k=0.638;// W/m.C
v=0.613*10^(-6);// m^2/s
h=Nu*k/d;//W/m^2.C
disp("W/m^2.C",h,"Heat transfer coefficient =")
Q=m*cp*(to-ti);// W
th1=t-ti;
th2=t-to;
thm=(th1-th2)/log(th1/th2);
A=Q/(h*thm);
L=A/(%pi*d);
disp("m",L,"Required tube legth is ")

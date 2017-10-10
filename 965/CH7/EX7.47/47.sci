clc;
clear all;
disp("incerease in bulk temperature")
tb1=200;//degree C
d=25.4/1000;//m diameter of tube
U=10;//m/s
tw=20;// degree C
L=3;//m length of tube
rho=1.493;//kg/m^3
mu=2.57*10^(-5);//Ns/m^2
k=0.0386;//W/m.C
cp=1025;// J/kg.C
Re=rho*U*d/mu
Pr=mu*cp/k
Nu=0.0023*Re^0.8*Pr^0.4
h=Nu*k/d
Q=h*%pi*d*(tb1-tw)
m=rho*%pi*d^2*U;
delT=Q/(m*cp);
disp("degree C",delT,"Increase in bulk temperature is = ")


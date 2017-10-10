clc;
clear all;
disp("heat transfer rate")
tw=25;//degree C
D=1.5/100;//m outer diameter of copper tube
U=2;//m/s
t=75;//degree C
rho=988;//kg/m^3
k=0.648;//W/m.K
mu=549.2*10^(-6);// kg.m/s
cp=4174;//J/kg.K
Re=rho*U*D/mu;
Pr=mu*cp/k;
Nu=0.3+0.62*(Re^0.5)*(Pr^(1/3))*(1+(Re/282000)^0.5)/(1+(0.4/Pr)^(2/3))^0.25;
h=Nu*k/D;
Ql=h*%pi*D*(t-tw);
disp("W/m",Ql,"heat transfer rate per unit length is Q/L =")

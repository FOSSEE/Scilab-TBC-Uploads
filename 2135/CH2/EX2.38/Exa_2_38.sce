//Exa 2.38
clc;
clear;
close;
format('v',7);

//Given Data : 
mdot=0.5;//kg/s
p1=1.4;//bar
rho1=2.5;//kg/m^3
u1=920;//kJ/kg
C1=200;//m/s
p2=5.6;//bar
rho2=5;//kg/m^3
u2=720;//kJ/kg
C2=180;//m/s
Qdot=-60;//kW
Z21=60;//m
g=9.81;//gravity constant
h21=u2-u1+(p2*10^5/(rho2*1000)-p1*10^5/(rho1*1000));//kJ/kg(change in enthalpy)
H21=mdot*h21;//kW(total change in enthalpy)
disp(H21,"Change in enthalpy, H2-H1 in kW :  ");
Wsf=Qdot-mdot*[h21+(C2^2-C1^2)/2/1000+g*(Z21)/1000];//kW
disp(Wsf,"Rate of workdone, Wsf in kW : ");

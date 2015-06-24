// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 3")
//A vertical plate having length,(L)=1.5m is maintained at temprature(Tw) of 60°C in the presence of saturated steam(temprature,Tg=100°C) at atmospheric pressure.
L=1.5;
Tg=100;
Tw=60;
//Consider the width of plate to be (B)=0.3m
B=0.3;
//tf is the mean film temprature
disp("The mean film temprature in°C is")
tf=(Tg+Tw)/2
//The relevant properties are desity(rho=972kg/m^3),conductivity(k=0.670W/(m*K)),viscosity(mu=3.54*10^-4 kg/(m*s))
//specific heat(cp=4.2J/(kg*K)),vapur density(rhov(100°C)=0.598k/m^3),Enthalpy of vaporisation(hfg(100°C)=2.27*10^6J/kg)
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
rho=972;
k=0.670;
mu=3.54*10^-4;
cp=4.2;
rhov=0.598;
hfg=2.27*10^6;
//The average heat transfer coefficient over length L is hbar=0.943*[(rho*(rho-rhov)*g*h*L^3)/(mu*k*(Tg-Tw))]^(1/4)
disp("The average heat transfer coefficient over length L in W/(m^2*K)")
hbar=0.943*[(rho*(rho-rhov)*g*hfg*k^3)/(mu*L*(Tg-Tw))]^(1/4)
//The rate of heat transfer Q=hbarL*A*(Tg-Tw)
//Area(A)=L*B
A=L*B;
disp("The rate of heat transfer  in kW ")
Q=[hbar*A*(Tg-Tw)]/1000
//The film thickness at the trailing edges is found out by delta=[(4*mu*k*x*(Tg-Tw))/(g*hfg*rho*(rho-rhov))]^(1/4)
disp("(b)The film thickness at the trailing edges in m is")
//at trailing edges x=1.5m
x=1.5;
delta=[(4*mu*k*x*(Tg-Tw))/(g*hfg*rho*(rho-rhov))]^(1/4)
//The rate of condensation is given by mdotc=(Q/hfg)
disp("The total rate of condensation in kg/s")
mdotc=((Q*1000)/hfg)
//v is the average flow velocity
disp("Hence the average flow velocity at the trailing edge in m/s is")
v=(mdotc)/(rho*delta*B)
























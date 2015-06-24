// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 5, Example 6")
//Air at 1atm pressure and temprature(Tin)=30°C enters a tube of 25mm diameter(D) with a velocity(U) of 10m/s
D=0.025;//in metre
U=10;
Tin=30;
//Tube is heated so that a constant heat flux(q) of 2kW/m^2 is maintained at the wall whose temprature is deltaT=20°C above the bulk mean air temprature through the length of tube 
//Let Tw-Tb=T
q=2000;
deltaT=20;
//The length(L)= 2m
L=2;
//For air density(rho=1.2kg/m^3),specific heat(cp=1000J/(kg*K))
rho=1.2;
cp=1000;
//From an energy balance of a control volume of air we get mdot*cp*(Tb+(dTb/dx)*deltax-Tb)=q*pi*D*deltax or (dTb/dx)=(q*pi*D)/(mdot*cp)
//mass flow rate=mdot
mdot=rho*%pi*D^2*U;
//let (dTb/dx)=Y
disp("(dTb/dx)in °C/m is")
Y=(4*q*%pi*D)/(mdot*cp)
//Tb2 is Exit bulk mean temprature
disp("Therefore Exit bulk mean temprature Tb2 in °C is")
Tb2=Tin+Y*2
//Again we can write at any section of the tube hx*(Tw-Tb)=q or hx=q/(Tw-Tb)
//hx is heat flux
disp("Heat flux(hx) in W/(m^2*°C) is ")
hx=q/(deltaT)
//Since Tw-Tb remains the same,The heat transfer coefficient at all sections are the same
//Now Overall Nusselt number,NuL=hx*D/k
//The thermal conductivity of air at mean temprature of (30+83.4)/2=56.7°C is k=0.0285 W/(m*K)
k=0.0285;
disp("Overall Nusselt number is ")
NuL=hx*D/k




















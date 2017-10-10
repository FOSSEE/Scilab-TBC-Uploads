clc;
clear all;
disp("Laminar flow over plate")

x=0.28;//m
U=3;//m/s velocity of air
rho=1.1374;//kg/m^3 density of air
k=0.02732;// W/(m.C)
cp=1005;// kJ/kg.K
v=1.6768*10^(-5);//mm^2/s kinematic viscosity of air
Pr=0.7;// Prandlt number
Ts=56;// degree C
Ta=20;// degree C
A=0.28*0.28;//m^2
Rex=U*x/v;// Reynold's number
Rex
delta=5*x*1000/(Rex)^0.5;//mm
disp("mm",delta,"Boundary layer thickness =")
Cfx=0.664/(Rex)^0.5;
disp(Cfx,"local friction coefficient =")
Cf=1.328/(Rex)^0.5;
disp(Cf,"Average friction coefficient =")
tau=Cfx*0.5*rho*U^2;// shear stress
disp("N/m^2",tau,"Shear stress , =")
deltath=delta/(Pr)^(1/3);
disp("mm",deltath,"Thickness of thermal boundary level =")
hx=0.332*(k/x)*Rex^0.5*Pr^(1/3);
disp("W/(m^2.C)",hx,"Local convective heat transfer coefficient, hx =")
h=0.664*(k/x)*Rex^0.5*Pr^(1/3);
disp("W/(m^2.C)",h,"average convective heat transfer coefficient, h =")
Qconv=h*A*(Ts-Ta);
disp("W",Qconv,"Rate of heat transfer by convection, Qconv =")
tau=0.01519;
Fd=tau*A;
disp("N",Fd,"drag force on one the plate, =")
m=5*rho*U*0.00626/8;
disp("kg/s",m,"Total mass flow rate through the  boundary =")

clc;
clear all;
disp("booundary layer thickness")
T=27+273;// degree K
U=2;//m/s velocity of air
L=0.4;//m length 
mu=19.8*10^(-6);//kg/m.s
Tp=60+273;// degree K temperature of plate
R=287;// N.m/ kg.m gas constant
P=10^(5);//N/m^2
v=17.36*10^(-6);// m^2/s
k=0.02749;//W/m.C
Cp=1006;//J/kg.K
Pr=0.7;// prandlt number
rho=P/(R*T);//kg/m^3
Re=rho*L*U/mu;
delta=4.64*L/(Re)^0.5;
disp("mm",delta*1000,"Boundary layer thickness =")
mx=5*rho*U*delta/8;
disp("kg/s",mx,"Mass flow rate per meter width =")
Nu=0.664*Re^0.5*Pr^(1/3);
h=k*Nu/L;
disp("W/m^2.C",h,"Heat transfer coefficient =")
Q=h*(L*1)*(Tp-T);
disp("W",Q*3.6,"Heat transfered per hour =")

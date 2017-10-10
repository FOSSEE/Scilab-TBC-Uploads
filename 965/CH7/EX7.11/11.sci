clc;
clear all;
disp("Local HT coefficient")

U=5;//m/s velocity of air
rho=0.815;//kg/m^3 density of air
k=0.0364;// W/(m.C)
mu=24.5*10^(-6);//Ns/m^2  viscosity of air
Pr=0.7;// Prandlt number
Ts=200;// degree C
Ta=120;// degree C
x=0.5;//m width of plate
v=mu/rho;
Rex=U*x/v;// Reynold's number
Rex
delta=5*x*1000/(Rex)^0.5;//mm
disp("mm",delta,"Boundary layer thickness =")
deltath=delta/(Pr)^(1/3);
disp("mm",deltath,"Thickness of thermal boundary level =")
hx=0.332*(k/x)*(Rex)^0.5*Pr^(1/3);
disp("W/(m^2.C)",hx,"Local convective heat transfer coefficient, hx =")


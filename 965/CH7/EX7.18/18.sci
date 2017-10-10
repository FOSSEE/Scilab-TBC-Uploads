clc;
clear all;
disp("Heat transfer coefficient")
Ta=20;// degree C
Ts=100;// degree C
U=1.8;//m/s
L=2.2;//m
B=1;//m
//Properties of air
rho=1.06;// kg/m^3
cp=1005;//J/kg.C
k=0.02894;// W/m.C
Pr=0.696;
v=18.97*10^(-6);//m^2/s

Re=U*L/v;
disp("Using exact solution: ")
Nu=0.664*Re^0.5*Pr^(1/3);
disp(Nu,"Nu =")

h=Nu*k/L;
disp(" W/m^2.C",h,"heat transfer coefficient =")
Q=h*L*B*(Ts-Ta);
disp("W",Q,"Heat transfer from plate =")
disp("Using approximate solution: ")
Nu=0.646*Re^0.5*Pr^(1/3);
disp(Nu,"Nu =")
h=Nu*k/L;
disp(" W/m^2.C",h,"heat transfer coefficient =")
Q=h*L*B*(Ts-Ta);
disp("W",Q,"Heat transfer from plate =")


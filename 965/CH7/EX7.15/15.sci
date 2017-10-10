clc;
clear all;
disp("booundary layer thickness")

T=20;// degree C
Tp=100;// degree C
U=2;//m/s velocity of air
v=18.97*10^(-6);// kinematic viscosity
L=0.5;//m length 
w=0.2;//m width
k=0.025;//W/m.C
Pr=0.7;
disp("When flow is parallel to 500 mm side")
Re=U*L/v;
Re
Nu=0.664*Re^0.5*Pr^(1/3);
h=Nu*k/L;
disp("W/m^2.c",h,"Heat transfer coefficient =")
Q=h*(L*w)*(Tp-T);
disp("W",Q,"Heat transfer rate =")

disp("When flow is parallel to 200 mm side")
Re=U*w/v;
Re
Nu=0.664*Re^0.5*Pr^(1/3);
h=Nu*k/w;
disp("W/m^2.c",h,"Heat transfer coefficient =")
Q=h*(L*w)*(Tp-T);
disp("W",Q,"Heat transfer rate =")

clc;
clear all;
disp("Heat removal by refrigeration")
La=0.22;//m thickness of brick wall
Lb=0.09;//m thickness of plastic foam
Lc=0.016;//m thickness of wood
thf=25;// degree C temperature of hot fluid
tcf=-3;// degree C temperature of cold fluid
kA=0.99;//W/(m*C) 
kB=0.022;//W/(m*C) 
kC=0.17;//W/(m*C)
A=85;//m^2
hhf=11;//W/(m^2*C) hot fluid 
hcf=30;//W/(m^2*C) cold fluid
U=1/(1/hhf+La/kA+Lb/kB+Lc/kC+1/hcf)
Q= U*A*(thf-tcf); 
disp("W/m^2",Q,"rate of heat flow per m^2 = ")
//Q=U*A*(thf-t2)
U=1/(1/hhf+La/kA);
t2=thf-Q/(U*A);
disp ("degree C",t2,"temperature of inside surface of brick t2 = ")


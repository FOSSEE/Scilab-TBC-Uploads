//Part A Chapter 7 Example 10
clc;
clear;
close;
p2=200;//kPa
T=30//degree C
ds=0;//for isentropic process
//for saturated liquid at 30 degree C
p1=4.25;//kPa
vf=0.001004;//m^3/kg
v1=vf;//m^3/kg
h21=v1*(p2-p1);//kJ/kg(h21=h2-h1)
disp("Enthalpy change is "+string(h21)+" kJ/kg");

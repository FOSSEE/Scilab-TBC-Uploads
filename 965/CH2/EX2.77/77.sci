clc;
clear all;
disp("Microwave heating capacity")
L=25/1000;//m thickness of slab
k=1;// W/(m*C)
tmax=100;// degree C
ta=30;
h=20;//W/(m^2*C)

//tmax=qg*(L/(2*h)+L*L/(8*k))+ta
qg=(tmax-ta)/(L/(2*h)+L*L/(8*k));// W/m^3
disp("kW/m^3",qg/1000,"Microwave heating capacity = ")

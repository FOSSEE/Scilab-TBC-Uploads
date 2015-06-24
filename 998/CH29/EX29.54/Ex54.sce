//Ex:54
clc;
clear;
close;
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
r_e=6370*10^3;//radius of earth in m
m=5.98*10^24;//mass of earth in kg
u=G*m;
v_e=sqrt((2*u)/r_e);//escape velocity in km/s
printf("The escape velocity=%f km/s",v_e/1000);
//Ex:48
clc;
clear;
close;
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
r_e=6370*10^3;//radius of earth in m
h=150*10^3;// height in m
m=5.98*10^24;//mass of earth in kg
u=G*m;
v=sqrt(u/(r_e+h))/1000;// velocity in km/s
printf("The orbital velocity of a satellite=%f km/s",v);
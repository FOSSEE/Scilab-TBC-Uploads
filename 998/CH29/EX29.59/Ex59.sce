//Ex:59
clc;
clear;
close;
G=6.67*10^(-11);//Gravitation const in N-m^2/kg^2
r_e=6360*10^3;//radius of earth in m
h=640*10^3;// height in m
m=5.98*10^24;//mass of earth in kg
u=G*m;
v=sqrt(u/(r_e+h));// velocity in km/s
V=7.54;// km/s
t=(2*3.14*(r_e+h)/1000)/V;
printf("The orbital period=%d s",t);
printf("\n The orbital period is 1 hour 37 minutes");
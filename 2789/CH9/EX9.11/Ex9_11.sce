clear;
clc;

//page no. 307

G = 40;// lb/min
d = 3;// in
T = 100;// degreeF
p = 50;// psia
l = 2000;//ft
Re = ((G/60)*(d/12))/(0.0491*32.2*4*10^-7);
f = 0.015;
gam1 = p*(144/(53.3*(T+460)));
V1 = (G/60)/(gam1*0.0491);
a = sqrt(1.4*32.2*53.3*(T+460));
M1 = V1/a;
M2_limit = sqrt(1/1.4);
l = (((1-(M1/M2_limit)^2)/(1.4*M1^2)) - 2*log(M2_limit/M1))*(0.25/0.015);
p2 = 38.9;//psia, from trial and error method 
printf('p2 = %.1f psia',p2);

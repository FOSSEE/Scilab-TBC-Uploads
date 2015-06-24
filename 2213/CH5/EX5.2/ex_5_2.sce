//Example 5.2: Rating of Heater
clc;
clear;
close;
//given data :
t1=25;// in degree C
t2=5;// in degree C
T=t1-t2;
A=6*5*4*(60/15);// volume of air to be conditioned in m^3/hour
Ht=1220;// in J
H1=A*Ht*T;
m=1000; // per m^3
Hl=836*10^3;// heat loss in J/C/h
H2=T*Hl;//in J/hour
H=(H1+H2);
Rh=round(H/(3600*1000));
disp(Rh,"Rating of heater,(kW) =")

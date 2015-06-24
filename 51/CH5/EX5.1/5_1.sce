clc;
clear;
v2=20;//m/s
dia2= 40;//mm

//m1=m2
//d1*Q1=D2*Q2; where d1=d2 is density of seawater
//hence Q1=Q2
Q=v2*(%pi*((dia2/1000)^2)/4);//m^3/sec
disp("m^3/sec",Q,"Flowrate=")
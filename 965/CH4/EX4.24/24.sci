clc;
clear all;
disp("Time Required")
x=0;// m
gradT=400;// C/m
a=0.42;//m^2/h
ti=120;// degree C
ta=6;// degree C
k=0.94;// W/(m.C)
tau=8;//hours

//Qs=k*gradT=k*(ti-ta)/(3.1416*a*tau)^0.5;
//gradT=(ti-ta)/(3.1416*a*tau)^0.5
tau=(((ti-ta)/gradT)^2)/(3.1416*a);
disp("seconds",tau*3600,"time required Tau =")



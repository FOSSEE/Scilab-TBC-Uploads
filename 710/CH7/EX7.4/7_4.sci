clc();
clear;
//To determine the orbital speed of proton
m=1.67*10^-27;                   //mass of proton
q=1.6*10^-19;
B=0.36;                          //magnetic field in T
R=0.2;                           //radius in m
v=((q*B*R)/m)*10^-6              //orbital speed of proton
printf("The orbital speed of proton is %f m/s",v);
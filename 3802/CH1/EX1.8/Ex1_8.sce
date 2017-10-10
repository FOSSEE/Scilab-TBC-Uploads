//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_8.sce.

clc;
clear;
V=200;         //suply voltage in volts
R1=0.3e6;     //resistance value in ohms
R2=0.5e6;     //resistance value in ohms
C=10e-6;      //capacitance value in farad
t1=5;         //time seconds
t2=2.5;       //time in seconds

//case1
printf("\n (a)")
v=V*(1-exp(-(t1/(R1*C))));
printf("\n  The voltage across capacitor when k1 is opened=%3.3f V",v)
//case2
printf("\n (b)")
Im=(v/R2);
printf("\n  Initial value of discharge current=%1.5f mA",Im*1e3)
//case3
printf("\n (c)")
i=-Im*exp(-(t2/(R2*C)));
printf("\n  The value of discharge current at 2.5 seconds=%1.3f mA",i*1e3)
//case4
printf("\n (d)")
Vc=v/(R2*C);
printf("\n  Initial rate of decay of capacitor voltage=%2.3f V/s",Vc)
//case5
printf("\n (e)")
E=(1/2)*(C*v^2);
printf("\n  The energy dissipated in resistor=%1.4f J",E)

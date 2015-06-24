//Ex:3.7
clc;
clear;
close;
E=10;
r1=500;
r2=600;
r3=500;
r4=400;
V_a=E*(r2/(r1+r2));
V_b=E*(r4/(r3+r4));
V_oc=V_a-V_b;
r=((r1*r2)/(r1+r2))+((r3*r4)/(r3+r4));
i=(V_oc/(r+100))*1000;
printf("Current flow in 100 ohm resistor = %f mA",i );
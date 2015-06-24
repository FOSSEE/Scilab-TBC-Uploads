//Exa 7.10
clc;
clear;
close;
//Given data : 
format('v',7);
l=300;//in meter
I=0.75;//in A/m
R=0.00018;//in ohm/m
x=200;//in meter
Vs=250;//in volt
VD=I*R*(l*x-x^2/2);//in volt
V_A=Vs-VD;//in volt(Voltage at 200m from end A)
disp(V_A,"Voltage as 200m from supply end A(in volts) :");
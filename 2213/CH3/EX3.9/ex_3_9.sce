//Example 3.9 // mass of aluminium
clc;
clear;
close;
//given data :
ECE_silver=111*10^-8;//in kg/C
Cew_silver=107.98;//chemical equivalent of silver
Cew_al=27/3;//chemical equivalent of aluminium
Z=(ECE_silver*Cew_al)/Cew_silver;
C_efficiency=0.92;
I=3000;//in A
t=24*60*60;//in seconds
m=Z*I*t*C_efficiency;
disp(m,"mass of aluminium,,m(kg) = ")

// Example 4.9.a //delay
clc;
clear;
close;
d=0.01;// Change in refractive index
n1=1.5;//Core refrctive index
L=6*10^3;//Length in meter
C=2.998*10^8;//Speed of light in m/s
dts=round(((L*n1*d)/C)*10^9);//delay in ns
disp(dts,"delay in ns")

// Example 4.20.a;//delay
clc;
clear;
close;
d=0.02;// Change in refractive index
n1=1.5;//Core refrctive index
L=3*10^3;//Length in meter
C=2.998*10^8;//Speed of light in m/s
dts=round(((L*n1*d)/C)*10^9);//DELAY IN NS
disp(dts,"DELAY IN NS")

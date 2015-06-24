// Example 4.19;//LIGHT PULSE SPREAD IN NS
clc;
clear;
close;
NA=0.275;//Numerical Aperture
n1=1.48;//Core refrctive index
L=5;//Length in Km
C=3*10^5;//Speed of light in km/s
dts=((L*(NA)^2)/(2*n1*C))*10^9;//LIGHT PULSE SPREAD IN NS
disp(dts,"LIGHT PULSE SPREAD IN NS")

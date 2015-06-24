// Example 4.20.b;//Pulse broadning due to intermodal dispersion
clc;
clear;
close;
d=0.02;// Change in refractive index
n1=1.5;//Core refrctive index
L=3*10^3;//Length in meter
C=2.998*10^8;//Speed of light in m/s
Ss=(L*n1*d)/(2*sqrt(3)*C)*10^9;//Pulse broadning due to intermodal dispersion in ns
disp(Ss,"DELAY IN NS")

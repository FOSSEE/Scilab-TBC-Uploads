// Example 2.4;Critical Angle
clc;
clear;
close;
n1=1.48;//Waveguide Refractive Index
n2=1.46;//Cladding Refractive Index
Oc=asind(sqrt((1-(n2/n1)^2)));//Critical Angle
disp(Oc,"critical angle in degree is")

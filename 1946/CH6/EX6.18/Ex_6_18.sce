// Example 6.18;//internal quantum efficiency
clc;
clear;
close;
n=3.6;//refractive index
nd=0.225;//differntilal quantum efficiency 
alpha=20;// in per cm
L=500;//in micro meter
r1= ((n-1)/(n+1))^2;
r2=r1;
ni=(nd*(1+((2*alpha*L*10^-4)/(log(1/(r1*r2))))))*100;
disp(ni,"Internal quantum efficiency is")

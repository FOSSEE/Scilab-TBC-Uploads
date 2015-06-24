// Example 2.21.A:Numerical Aperture
clc;
clear;
close;
c=3*10^8 ;// Speed of lignt in m/s
v=2*10^8;//speed of ligh in fiber in m/s
Oc=75;// Critical angle in degree
n1=c/v;//cORE Refractive Index
n2=n1*(sind(Oc));// Cladding Refrative index
NA=sqrt(n1^2-n2^2);// Numerical Aperture
disp(NA,"Numerical Aperture of the Fiber")

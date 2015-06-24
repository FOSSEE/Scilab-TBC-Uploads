//Example 3.2.2 // number of turns
clc;
clear;
close;
//given data :
theta=%pi/2;
I=5*10^-3;// in A
B=1.8*10^-3;// in Wb/m^2
C=0.14*10^-6;// in Nm/rad
L=15*10^-3;// in m
d=12*10^-3;// in m
N=(C*theta)/(B*I*L*d);
disp(round(N),"number of turns,N(turns) = ")

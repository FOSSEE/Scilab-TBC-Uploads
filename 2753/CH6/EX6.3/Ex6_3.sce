//Example 6.3: 
clc;
clear;
close;
//given data :
format('v',4)
a=5.6*10^-6/2;// channel width in m
epsilon0=8.86*10^-12;// in F/m
epsilon=12*epsilon0;// in F/m
Nd=10^21;// in m^-3
e=1.6*10^-19;// in V
Vp=e*Nd*a^2/(2*epsilon);
disp(Vp,"Pinch off voltage,Vp(V) = ")

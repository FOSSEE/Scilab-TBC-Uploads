//Example 3.2 // mass of copper deposited
clc;
clear;
close;
//given data :
m=20;//in gm
I=120;//in A
t=10*60;//in sec
t1=5*60;//in sec
I1=100;//in A
Cec=63.18/2;
Cen=58.6/2;
Z=m/(I*t);
Z1=(Z*(Cec/Cen))*10^-3;
m1=Z1*I1*t1;
disp("mass of copper depsoited is "+string(m1)+"kg or "+string(round(m1*10^3))+"gm")

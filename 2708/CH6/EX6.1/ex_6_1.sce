//Example 6.1 // Equilibrium position time 
clc;
clear;
//given data :
A=.05;//Amplitude of SHM in m
T=6;// period in sec
Xo=A;// equilibrium position at t=0 position in m
X=.025;//equilibrium position  in m
w=2*%pi/T;// angular frequency in rad/sec
ph=asin(Xo/A);// phase angle in radian
t=(asin(X/A)-ph)/w// time for equilibrium position in sec
t=abs(t);// it take positive magnitude
disp(t,"time to move from Equilibrium position in sec") 

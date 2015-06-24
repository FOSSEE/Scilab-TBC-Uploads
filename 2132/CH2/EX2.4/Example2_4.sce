//Example 2.4
clc;
clear;
close;

//Given data :
A=0.2;//m^2
dy=0.02/100;//m
du=20/100;//cm/s
mu=0.001;//Ns/m^2
tau=mu*du/dy;//in N/m^2
F=tau*A;//N
disp(F,"Force required in N : ");
Power=F*du;//Watts
disp(Power,"Power required in W : ");

//Example No. 4.4
clc;
clear;
close;
format('v',6);

//Given Data : 
T=110;//min
Tdash=150;//min
t=30;//min
tdash=45;//min
theta_f=50;//degree C
//theta=theta_f-(theta_f-theta1)*exp(-t/T)
//theta1=theta*exp(-tdash/Tdash);
theta=(theta_f-theta_f*exp(-t/T))/(1-exp(-tdash/Tdash)*exp(-t/T));//degreeC
disp(theta,"Maximum temperature rise of the motor in degree C : ");

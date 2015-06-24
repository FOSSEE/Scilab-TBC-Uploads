//Example No. 4.7
clc;
clear;
close;
format('v',6);

//Given Data : 
t_on=15;//min
t_off=25;//min
T=100;//min
Tdash=140;//min
theta_f=55;//degree C

//theta=theta_f-(theta_f-theta1)*exp(-t/T)
//theta1=theta*exp(-tdash/Tdash);
theta_max=theta_f*[1-exp(-t_on/T)]/(1-exp(-(t_off/Tdash+t_on/T)));//degreeC
disp(theta_max,"Maximum temperature rise in degree C : ");

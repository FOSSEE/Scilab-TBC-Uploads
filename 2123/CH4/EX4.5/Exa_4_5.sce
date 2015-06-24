//Example No. 4.5
clc;
clear;
close;
format('v',6);

//Given Data : 
theta1=20;//degreeC
theta2=28;//degreeC
dthetaBYdt1=0.08;//degreeC/min
dthetaBYdt2=0.06;//degreeC/min
//theta=theta_f-(theta_f-theta1)*exp(-t/T)
//dtheta/dt=(theta_f-theta)/T
//dthetaBYdt1/dthetaBYdt2=(theta_f-theta1)/(theta_f-theta2)
theta_f=(theta2*dthetaBYdt1-theta1*dthetaBYdt2)/(dthetaBYdt1-dthetaBYdt2)
disp(theta_f,"Final temperature rise in degree C : ");
T=(theta_f-theta1)/dthetaBYdt1;//min
disp(T,"Heating time constant in min : ");

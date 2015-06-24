//Example No. 4.1
clc;
clear;
close;
format('v',6);

//Given Data : 
P=30;//KW
theta1=30;//degree C
t1=40;//min
theta2=45;//degree C
t2=80;//min(t2=2*t1)
disp("theta=theta_f*(1-exp(-t/T))");
//Let exp(-t1/T)=a then exp(-t2/T)=a^2
//theta1/theta2=(1-a)/(1-a^2)
//a^2*theta1-a*theta2+theta2-theta1=0
P=[theta1 -theta2 theta2-theta1];//Polynomial for a
a=roots(P);
a=a(2);//discarding value 1 as it cant give value of T
T=-t1/log(a);//min
disp(T,"Thermal time constant in min : ");
theta_f=theta1/(1-exp(-t1/T));//degreeC
disp(theta_f,"Final temperature rise in degree C : ");

//Example No. 4.2
clc;
clear;
close;
format('v',6);

//Given Data : 
P=30;//KW
theta1=20;//degree C
t1=30;//min
theta2=30;//degree C
t2=60;//min(t2=2*t1)
disp("theta=theta_f*(1-exp(-t/T))");
//Let exp(-t1/T)=x then exp(-t2/T)=x^2
//theta1/theta2=(1-x)/(1-x^2)
//x^2*theta1-x*theta2+theta2-theta1=0
P=[theta1 -theta2 theta2-theta1];//Polynomial for a
x=roots(P);
x=x(2);//discarding value 1 as it cant give value of T
T=-t1/log(x);//min
disp(T,"Thermal time constant in min : ");
theta_f=theta1/(1-exp(-t1/T));//degreeC
disp(theta_f,"Final temperature rise in degree C : ");

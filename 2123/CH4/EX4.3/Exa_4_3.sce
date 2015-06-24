//Example No. 4.3
clc;
clear;
close;
format('v',6);

//Given Data : 
P=30;//KW
theta1=54-30;//degree C
t1=1;//hour
theta2=67-30;//degree C
t2=2;//hour(t2=2*t1)
disp("theta=theta_f*(1-exp(-t/T))");
//Let exp(-t1/T)=a then exp(-t2/T)=a^2
//theta1/theta2=(1-a)/(1-a^2)
//a^2*theta1-a*theta2+theta2-theta1=0
P=[theta1 -theta2 theta2-theta1];//Polynomial for a
a=roots(P);
a=a(2);//discarding value 1 as it cant give value of T
T=-t1/log(a);//hour
theta_f=theta1/(1-exp(-t1/T));//degreeC
theta_steady=theta_f+30;//degreeC
disp(theta_steady,"Final steady state temperature in degree C : ");
disp(T,"Heating time constant in hour : ");
theta2=theta_f;//degree C
t=2.7;//hour
theta=40-30;//degree C
Tdash=-t/log(theta/theta2);//hour
disp(Tdash,"Cooling time constant in hour : ");

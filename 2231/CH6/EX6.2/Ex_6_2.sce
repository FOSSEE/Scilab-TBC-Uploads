//Example 6_2
clc;
clear;close;

//Given data: 
P=30;//kW
theta1=30;//degree C
t1=40;//minutes
theta2=45;//degree C
t2=80;//minutes
t2=2*t1;//minutes
Loss_fl=2;//kW
Loss_Cu=2.5;//kW

//Solution :
//theta1=theta_f*(1-exp(-t1/T));
//let exp(-t1/T)=a
a=poly(0,'a');
polynomial=(1-a^2)*(theta1/theta2)-1+a;
a=roots(polynomial)
a=a(2);
T=-t1/log(a);//s
disp(T,"Thermal time constant(minutes)");
theta_f=theta1/(1-exp(-t1/T));
disp(theta_f,"Final temperature rise(degree C)");
alfa=Loss_fl/Loss_Cu;
t=20;//minutes
rating=P*sqrt((1+alfa)/(1-exp(-t/T))-alfa);//kW
disp(rating,"20 minute rating of motor(kW)");

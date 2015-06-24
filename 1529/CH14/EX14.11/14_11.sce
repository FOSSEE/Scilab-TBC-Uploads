//Chapter 14, Problem 11
clc;
T=0.01;                        //time period
Vm=40;                          //peak voltage
w=(2*%pi)/T;
v=-20;
phi=asin(v/Vm);
printf("instantaneous voltage can be expressed as\n v=40*sin((200*pi*t)+phi)");
printf("When time t=0, v=-20\n")
printf("phi = %d",phi);

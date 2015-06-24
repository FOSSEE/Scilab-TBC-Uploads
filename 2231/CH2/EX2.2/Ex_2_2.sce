//Example 2_2
clc;
clear;close;

//Given data: 
Vo=50;//V
R=10;//ohm
//Vin=100*sin(omega*t);//V
Vm=100;//V

//Solution :
omega_t=asin(Vo/Vm);//radian
Iavg=1/2/%pi*integrate('(Vm*sin(omega_t)-Vo)/R','omega_t',omega_t,omega_t+2*%pi/3);//A
disp(Iavg,"Average current in the circuit(A) : ");

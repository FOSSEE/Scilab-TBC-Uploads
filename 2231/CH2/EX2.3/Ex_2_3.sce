//Example 2_3
clc;
clear;close;

//Given data: 
Eb=55.5;//V
R=10;//ohm
//Vin=110*sin(omega*t);//V
Vm=110*sqrt(2);//V

//Solution :
omega_t=asind(Eb/Vm);//degree
Iavg=1/2/180*integrate('(Vm*sind(omega_t)-Eb)/R','omega_t',omega_t,180-omega_t);//A
disp(Iavg,"Average current in the circuit(A) : ");

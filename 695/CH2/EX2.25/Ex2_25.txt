//Caption:Determine the speed 
//Exa:2.25
clc;
clear;
close;
V=220;//in volts
R_a=0.1;//in ohms
I_a1=100;//in amperes
I_a2=sqrt(I_a1^2/2);//in amperes
N_1=800;//in rpm
E_1=V-(I_a1*R_a);//in volts
E_2=V-(I_a2*R_a);//in volts
N_2=int(E_2*I_a1*N_1/(E_1*I_a2));
disp(N_2,'Speed (in rpm)=');
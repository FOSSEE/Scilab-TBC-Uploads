//Caption:Determine the speed 
//Exa:2.26
clc;
clear;
close;
V=250;//in volts
R_a=0.25;//in ohms
I_a1=50;//in amperes
I_a2=I_a1/0.9;//in amperes
N_1=750;//in rpm
E_1=V-(I_a1*R_a);//in volts
E_2=V-(I_a2*R_a);//in volts
N_2=int(E_2*N_1/(E_1*0.9));
disp(N_2,'Speed (in rpm)=');
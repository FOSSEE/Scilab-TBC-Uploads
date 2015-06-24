//Example 1.19: 
clc;
clear;
close;
//given data :
V=1.2;// in V
Vk=0.7;// in V
I_F=100;// in mA
R_B=(V-Vk)/(I_F*10^-3);
V_R=10;// in V
I_R=1;// in micro-A
R_R=V_R/I_R;
format('v',3)
disp(R_B,"the bulk resistance,R_B(ohm) = ")
disp(R_R,"the reverse resistance,R_R(M-ohm) = ")
eta=2;
I=5;// in  mA
R_ac=eta*26/I;
format('v',5)
disp(R_ac,"ac resistance,R_ac(ohm) = ")

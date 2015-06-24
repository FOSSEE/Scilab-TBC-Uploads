//Caption:Determine the value of additional resistance (a)at starting (b)at 1000rpm
//Exa:2.29
clc;
clear;
close;
V=240;//in volts
R_a=0.3;//in ohms
N_1=1500;//in rpm
I_a=40;//in ampers
E=V-(I_a*R_a);//in volts
R_1=(V-I_a*R_a)/I_a;
disp(R_1,'(a) Additional resistance at starting (in ohms)=');
N_2=1000;//in rpm
E_2=N_2*E/N_1;//in volts
R_2=-(E_2-V+I_a*R_a)/I_a;
disp(R_2,'(b) Additional resistance at 1000 rpm (in ohms)=');
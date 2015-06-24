//Caption:Determine the speed (a)at half load (b)125% full load
//Exa:2.27
clc;
clear;
close;
V=120;//in volts
V_b=3;//in volts
R_a=0.2;//in ohms
R_f=60;//in ohms
I_L1=40;//in amperes
I_f=V/R_f;//inn amperes
I_a1=I_L1-I_f;//in amperes
N_1=1800;//in rpm
E_1=V-(I_a1*R_a)-V_b;//in volts
I_L2=I_L1/2;
I_a2=I_L2-I_f;
E_2=V-(I_a2*R_a)-V_b;//in volts
N_2=int(E_2*N_1/E_1);
disp(N_2,'(a) Speed at half load(in rpm)=');
I_L3=I_L1*1.25;
I_a3=I_L3-I_f;
E_3=V-(I_a3*R_a)-V_b;//in volts
N_3=int(E_3*N_1/E_1);
disp(N_3,'(b) Speed at 125% load(in rpm)=');
//Caption:Determine the (a)speed at full load (b)speed at double full load (c)stalling torque in terms of full load torque
//Exa:2.30
clc;
clear;
close;
V=250;//in volts
R_a=0.2;//in ohms
N_1=800;//in rpm
R_f=250;//in ohms
I_f=V/R_f;//in amperes
I=41;//in ampers
I_a1=I-I_f;//in amperes
E_1=V-(I_a1*R_a);//in volts
E_2=V-(I_a1*(R_a+2));//in volts
N_2=E_2*N_1/E_1;
disp(N_2,'(a) Speed at full load (in rpm)=');
I_a2=I_a1*2;//in amperes
E_3=V-I_a2*(R_a+2);//in volts
N_3=E_3*N_1/E_1;//in rpm
disp(N_3,'(b) Speed at double full load (in rpm)=');
I_ao=V/(R_a+2);
r=I_ao/I_a1;
disp(r,'(c) stalling torque is (times full load torque) =')
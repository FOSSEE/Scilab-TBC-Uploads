//Caption:Calculate the value of external resistance when (a)the load torque is independent of speed (b)the load torque is proportional to speed (c)the load torque varies as square of the speed
//Exa:2.41
clc;
clear;
close;
V=240;//in volts
R_a=0.25;//in ohms
R_f=120;//in ohms
I_f=V/R_f;
I_L=26;//in amperes
I_a=I_L-I_f;
N_1=1000;//in rpm
N_2=900;//in rpm
E_b1=V-I_a*R_a;
r=N_1/N_2;
R=(E_b1-(E_b1/r))/I_a;
disp(R,'(a)Value of external resistance when the load torque is independent of speed (in ohms)= ');
I_a2=I_a/r;
R1=(E_b1-(E_b1/r))/I_a2;
disp(R1,'(b)Value of external resistance when the load torque is proportional to speed (in ohms)= ');
I_a2_n=I_a/r^2;
R2=(E_b1-(E_b1/r))/I_a2_n;
disp(R2,'(a)Value of external resistance when the load torque is independent of speed (in ohms)= ');
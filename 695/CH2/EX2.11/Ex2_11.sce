//Caption:Find the (a)armature current (b)generated emf (c) no. of conductors of armature
//Exa:2.11
clc;
clear;
close;
P_o=22000;//power in watts
V_t=220;//in volts
V_b=1;//per brush drop in volts
P=4;//no. of poles
A=2;
R_se=0.04;//series resistance in ohms
R_a=0.05;//armature winding resistance in ohms
R_f=110;//feild winding resistance in ohms
Phy=7.8*10^-3;//in weber
N=1000;//speed in rpm
I=P_o/V_t;//in amperes
I_f=V_t/R_f;//in amperes
I_a=I+I_f;
E_g=V_t+I_a*(R_a+R_se)+2*V_b;
Z=E_g*60*A/(Phy*N*P)
disp(I_a,'(a) Armature current (in amperes)=');
disp(E_g,'(b) Generated emf (in volts)=');
disp(Z,'(c) No. of conductors of armature=');
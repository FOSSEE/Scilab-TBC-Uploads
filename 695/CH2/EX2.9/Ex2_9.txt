//Caption:Find the (a)armature current (b)generated emf (c)flux/pole
//Exa:2.9
clc;
clear;
close;
V_t=200;//in volts
P=4;//no. of poles
A=2;
Z=676;//no.of conductors
R_L=10;//load resistance in ohms
R_a=0.34;//armature winding resistance in ohms
R_f=100;//feild winding resistance in ohms
N=600;//speed in rpm
I_f=V_t/R_f;//in amperes
I=V_t/R_L;//in amperes
I_a=I+I_f;
E_g=V_t+I_a*R_a;
Phy=E_g*60*A/(P*N*Z);
disp(I_a,'(a) Armature current (in amperes)=');
disp(E_g,'(b) Generated emf (in volts)=');
disp(Phy*1000,'(c) flux/pole (in mili weber)=');
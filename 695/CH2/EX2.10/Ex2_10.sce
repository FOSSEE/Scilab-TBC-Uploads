//Caption:Find the (a)load current (b)generated emf (c)flux/pole
//Exa:2.10
clc;
clear;
close;
V_t=250;//in volts
P=6;//no. of poles
A=P;
Z=700;//no.of conductors
R_a=0.04;//armature winding resistance in ohms
R_f=100;//feild winding resistance in ohms
N=1000;//speed in rpm
I_f=V_t/R_f;//in amperes
I_a=7.2/R_a;//in amperes
I=I_a-I_f;//in amperes
E_g=V_t+I_a*R_a;
Phy=E_g*60*A/(P*N*Z);
disp(I,'(a) Load current (in amperes)=');
disp(E_g,'(b) Generated emf (in volts)=');
disp(Phy*1000,'(c) flux/pole (in mili weber)=');
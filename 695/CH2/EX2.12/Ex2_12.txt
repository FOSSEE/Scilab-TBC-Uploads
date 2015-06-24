//Caption:Find the power absorbed by the load
//Exa:2.12
clc;
clear;
close;
P=6;//no. of poles
A=2;
Z=350;//no. of conductors
R_a=0.8;//armature winding resistance in ohms
R_f=120;//feild winding resistance in ohms
Phy=0.02;//in weber
N=1000;//speed in rpm
R_L=12;//load resistance in ohms
E_g=Phy*N*Z*P/(60*A);//emf induced in volts
V_t=E_g/(1+((1/R_f)+(1/R_L))*R_a);
I_L=V_t/R_L;//in amperes
P_o=V_t*I_L;//in watts
disp(P_o,'Power absorbed by the load (in watts)=')
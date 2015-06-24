//Exa:1.34
clc;
clear;
close;
P_o=17.6*1000;//in watts
Eff=0.8;//Efficiency
V=220;//in volts
I_f=P_o/(V*Eff);//in amperes
I_af=I_f;//in amperes
R_a=0.1;//in ohms
N=1200;//in rpm
T_f=P_o/(2*%pi*N/60);//Full load torque (N-m)
E_bf=V-I_af*R_a;//Back emf (in volts)
V_a=V+E_bf;// Voltage across armature (in volts)
I_b=2*I_f;//braking current
R=(V_a/I_b)-R_a;//in ohms
disp(R,'Value of external resistance (in ohms)=');
E_b1=E_bf*400/N;//in volts
I_b1=(V+E_b1)/(R+R_a);//in amperes
T_b1=T_f*I_b1/I_f;
disp(T_b1,'Braking Torque when speed reduced to 400 rpm (in N-m)=');
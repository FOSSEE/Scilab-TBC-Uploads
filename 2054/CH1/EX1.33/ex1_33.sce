//Exa:1.33
clc;
clear;
close;
I_f=100;//in amperes
V=220;//in volts
N=1000;//in rpm
T_f=V*I_f/(2*%pi*N/60);//Full load torque (N-m)
E_bf=V;//Back emf (in volts)
V_a=V+E_bf;// Voltage across armature (in volts)
I_b=2*I_f;//braking current
R=(V_a/I_b);//in ohms
disp(R,'Value of external resistance (in ohms)=');
T_b=T_f*I_b/I_f;
disp(T_b,'Initial Braking Torque (in N-m)=');
E_b1=E_bf*500/N;//in volts
I_b1=(V+E_b1)/R;//in amperes
T_b1=T_f*I_b1/I_f;
disp(T_b1,'Braking Torque when speed reduced to 500 rpm (in N-m)=');
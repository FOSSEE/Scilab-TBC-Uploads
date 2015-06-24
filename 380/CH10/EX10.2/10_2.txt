//Caption:Find the shaft torque and the efficiency of the motor
//Exa:10.2
clc;
clear;
close;
V=120;//in volts
f=60;//frequency in Hertzs
P=4;//no. of poles
R1=2.5;//in ohms
X1=(%i)*1.25;
R2=3.75;
X2=(%i)*1.25;
X_m=(%i)*65;
N_m=1710;//speed of motor (in rpm)
P_c=25;//core lossv(in Watts)
P_fw=2;//friction and windage loss (in Watts)
N_s=120*f/P;//synchronous speed of motor
s=(N_s-N_m)/N_s;//slip
Z_f=(X_m*((R2/s)+X2)*0.5)/((R2/s)+(X2+X_m));//forward impedance
Z_b=(X_m*((R2/(2-s))+X2)*0.5)/((R2/(2-s))+(X2+X_m));//backward impedance
Z_in=R1+X1+Z_f+Z_b;
I_1=V/Z_in;
P_in=real(V*conj(I_1));
I_2f=X_m*I_1/((R2/s)+(X1+X_m));//forward current
I_2b=X_m*I_1/((R2/(2-s))+(X1+X_m));//backward current
P_agf=0.5*(R2/s)*(abs(I_2f))^2;//air gap power in forward path
P_agb=0.5*(R2/(2-s))*(abs(I_2b))^2;//air gap power in backward path
P_ag=P_agf-P_agb;//net air gap power
P_d=(1-s)*P_ag;//gross power developed
P_o=P_d-P_c-P_fw;//net power output
w_m=2*(%pi)*N_m/60;
T_s=P_o/w_m;
disp(T_s,'shaft torque (in Newton-meter)=');
Eff=P_o/P_in;
disp(Eff*100,'Efficiency of motor (%)=');
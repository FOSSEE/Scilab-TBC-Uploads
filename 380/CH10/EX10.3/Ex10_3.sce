//Caption:Find the (a)line current (b)power input (c)efficiency (d)shaft torque (e)voltage drop across capacitor (f)starting torque
//Exa:10.3
clc;
clear;
close;
V1=230;//in volts
f=50;//frequency in Hz
P=6;//no. of poles
R1=34.14;//in ohms
X1=(%i)*35.9;
R_a=149.78;
X2=(%i)*29.32;
X_m=(%i)*248.59;
R2=23.25;
a=1.73;
C=4*10^-6;//in Farad
P_c=19.88;//core loss
P_fw=1.9;//friction and windage loss
N_m=940;//speed of motor in rpm
N_s=120*f/P;//synchronous speed of motor
s=(N_s-N_m)/N_s;//slip
w_m=2*%pi*N_m/60;//in rad/sec
X_c=-%i/(2*%pi*f*C);//reactance of capacitance
Z_f=(X_m*((R2/s)+X2)*0.5)/((R2/s)+(X2+X_m));//forward impedance
Z_b=(X_m*((R2/(2-s))+X2)*0.5)/((R2/(2-s))+(X2+X_m));//backward impedance
Z_11=R1+X1+Z_f+Z_b;//in ohms
Z_12=-%i*a*(Z_f-Z_b);//in ohms
Z_21=-Z_12;//in ohms
Z_22=a*a*(Z_f+Z_b+X1)+R_a+X_c;//in ohms
I_1=V1*(Z_22-Z_12)/(Z_11*Z_22-Z_12*Z_21);//current in main winding
I_2=V1*(Z_11-Z_21)/(Z_11*Z_22-Z_12*Z_21);//current in auxilary winding
I_L=I_1+I_2;
disp(abs(I_L),'(a) magnitude of line current (in Amperes)=');
disp(atand(imag(I_L)/real(I_L)),'  phase of line current (in Degree)');
P_in=real(V1*conj(I_L));
disp(P_in,'(b) power input (in Watts)=');
P_agf=real((I_1*Z_f-%i*I_2*a*Z_f)*conj(I_1)+(I_2*a*a*Z_f+%i*I_1*a*Z_f)*conj(I_2));//air gap power developed by forward field
P_agb=real((I_1*Z_b+%i*I_2*a*Z_b)*conj(I_1)+(I_2*a*a*Z_b-%i*I_1*a*Z_b)*conj(I_2));//air gap power developed by backward field
P_ag=P_agf-P_agb;
P_d=(1-s)*P_ag;//power developed
P_o=P_d-P_c-P_fw;//output power
disp(P_o*100/P_in,'(c) Efficiency of motor (%)=');
T_s=P_o/w_m;
disp(T_s,'(d) shaft torque (in Newton-meter)=');
V_c=I_2*X_c;
disp(abs(V_c),'(e) magnitude of voltage across capacitor (in Volts)=');
disp(atand(imag(V_c)/real(V_c)),'    phase of voltage across capacitor (in Degree)=');
//for starting torque
s=1;
s_b=1;
w_s=2*%pi*N_s/60;
Z_f=(X_m*((R2/s)+X2)*0.5)/((R2/s)+(X2+X_m));//forward impedance
Z_b=(X_m*((R2/(2-s))+X2)*0.5)/((R2/(2-s))+(X2+X_m));//backward impedance
Z_11=R1+X1+Z_f+Z_b;//in ohms
Z_12=-%i*a*(Z_f-Z_b);//in ohms
Z_21=-Z_12;//in ohms
Z_22=a*a*(Z_f+Z_b+X1)+R_a+X_c;//in ohms
I_1s=V1*(Z_22-Z_12)/(Z_11*Z_22-Z_12*Z_21);//current in main winding
I_2s=V1*(Z_11-Z_21)/(Z_11*Z_22-Z_12*Z_21);//current in auxilary winding
I_Ls=I_1s+I_2s;
P_in=real(V1*conj(I_Ls));
P_agf=real((I_1s*Z_f-%i*I_2s*a*Z_f)*conj(I_1s)+(I_2s*a*a*Z_f+%i*I_1s*a*Z_f)*conj(I_2s));//air gap power developed by forward field
P_agb=real((I_1s*Z_b+%i*I_2s*a*Z_b)*conj(I_1s)+(I_2s*a*a*Z_b-%i*I_1s*a*Z_b)*conj(I_2s));//air gap power developed by backward field
P_ag=P_agf-P_agb;
T_s=P_ag/w_s;
disp(T_s,'(f) starting torque (in Newton-meter)=');
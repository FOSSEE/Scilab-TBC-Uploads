//Caption:Find the efficiency
//Exa:9.2
clc;
clear;
close;
V=230;//in volts
f=60;//in Hertz
P=6;//no. of poles
N_s=120*f/P;//synchronous speed (in rpm)
V_1=V/sqrt(3);//per phase voltage (in Volts)
R_2=0.25;//in ohms
R_1=0.5;//in ohms
X_1=0.75;//in ohms
X_2=0.5;//in ohms
X_m=100;//in ohms
R_c=500;//in ohms
s=0.025;//slip
Z_1=R_1+%i*X_1;//in ohms
Z_2=(R_2/s)+%i*X_2;//in ohms
Z=(0.002-(%i*.01)+(0.10025-%i*0.0050125));
Z_e=(1/Z);//equivalent impedance (in ohms)
Z_in=Z_1+Z_e;//input impedance (in ohms)
I_1=V_1/Z_in;//in Amperes
theta=atand(imag(I_1)/real(I_1));
P_in=3*V_1*real(I_1);
P_scl=3*(abs(I_1))^2*R_1;
E_1=V_1-I_1*Z_1;
I_c=E_1/R_c;//core loss current
I_m=-%i*E_1/X_m;
I_phy=I_c+I_m;//excitation current (in Amperes)
I_2=I_1-I_phy;//rotor current (in Amperes)
P_m=3*abs(I_c)*abs(I_c)*R_c;//core loss (in Watts)
P_ag=P_in-P_scl-P_m;//air gap power (in Watts)
P_rcl=3*abs(I_2)*abs(I_2)*R_2;//rotor copper loss (in Watts)
P_d=P_ag-P_rcl;//power developed (in Watts)
P_o=P_d-150;//output power (in Watts)
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=');
//Caption:Find the efficiency of the motor
//Exa:9.3
clc;
clear;
close;
//Refer to data of Exa:9.2
R_1=0.5;//in ohms
R_2=0.25;//in ohms
X_1=0.75;//in ohms
X_2=0.5;//in ohms
R_c=500;//in ohms
s=0.025;//slip
I_c=132.791/500;//Core-loss currrent (in Amperes)
I_m=-%i*132.791/100;//Magnetization current (in Amperes)
Z_e=R_1+(R_2/s)+%i*(X_1+X_2);//in ohms
I_2=132.791/Z_e;//rotor current (in Amperes)
I_1=I_2+I_c+I_m;//in Amperes
P_in=3*real(132.791*conj(I_1));//power input (in Watts)
P_scl=3*(abs(I_2))^2*R_1;//stator copper loss (in Watts)
P_rcl=3*(abs(I_2))^2*R_2;//rotor copper loss (in Watts)
P_m=3*(abs(I_c))^2*R_c;// core loss (in Watts)
P_o=P_in-P_scl-P_rcl-P_m-150;//power output (in Watts)
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=');
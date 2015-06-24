//Caption:Find the excitation voltage and power developed 
//Exa:8.2
clc;
clear;
close;
V=480;//in volts
V_a=V/sqrt(3);//per phase applied voltage
I_a=50;//in Amperes
R_a=0.5;//armature winding resistance
X_d=(%i)*3.5;//d-axis reactance
X_q=(%i)*2.5;//q-axis reactance
E_ao=V_a-(I_a*R_a)-(I_a*X_q);
delta=atand(imag(E_ao)/real(E_ao));
I_d=I_a* sind(abs(delta))*(cosd(90+delta)+(%i)*sind(90+delta));//d-axis current
E_a=E_ao-(I_d*(X_d-X_q));
E_L=E_a*sqrt(3);
disp(abs(E_L),'rms value of excitation voltage (in Volts)=');
P_d=3*real(E_ao*conj(I_a));
disp(P_d/1000,'power developed by motor (in Kilo-Watts)=');
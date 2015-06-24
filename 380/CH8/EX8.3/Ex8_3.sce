//Caption:Find (a) power factor (b) power angle (c) line to line excitation voltage (d) torque developed
//Exa:8.3
clc;
clear;
close;
V=440;//in volts
V_a=V/sqrt(3);//per phase voltage
w_m=188.5;//rad/sec
X_s=(%i)*(36/3);//per phase reactance
E_ao=560/sqrt(3);//per-phase excitation voltage
P_d=9000;//power developed (in Watts)
delta=asind(-P_d*12/(3*V_a*E_ao));
E_a=E_ao*(cosd(delta)+(%i)*sind(delta));
I_a=(V_a-E_a)/X_s;
alpha=atand(imag(I_a)/real(I_a));
disp(cosd(alpha),'(a) Power factor=');
disp(delta,'(b) power angle (in Degree)=');
E_L=(sqrt(3))*E_a*(cosd(30)+((%i)*sind(30)));
disp(abs(E_L),'(c) line to line excitation voltage (in Volts)=');
disp(atand(imag(E_L)/real(E_L)),'phase angle of line to line excitation voltage (in Degree)');
T_d=P_d/w_m;
disp(T_d,'(d) Torque developed (in Newton-meter)=');
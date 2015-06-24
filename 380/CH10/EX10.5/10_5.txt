//Find the (a) induced emf in the armature (b) power output (c) shaft torque (d) efficiency
//Exa:10.5
clc;
clear;
close;
V_s=120;//in Volts
P_rot=80;//rotational loss (in Watts)
N_m=8000;//speed of motor (in rpm)
pf=0.912;//lagging
theta=-acosd(pf);
I_a=17.58*(cosd(theta)+(%i*sind(theta)));//in Amperes
Z_s=0.65+%i*1.2;//series field winding impedance (in ohms)
Z_a=1.36+%i*1.6;//armature winding impedance (in ohms)
E_a=V_s-I_a*(Z_s+Z_a);//induced emf (in Volts)
disp(abs(E_a),'(a) induced emf in the armature (in Volts)=');
disp(atand(imag(E_a)/real(E_a)),'phase of induced emf in the armature (in Degree)=');
P_d=real(E_a*conj(I_a));
P_o=P_d-P_rot;
disp(P_o,'(b) power output (in Watts)=');
w_m=2*%pi*N_m/60;//rated speed of motor (in rad/sec)
T_s=P_o/w_m;
disp(T_s,'(c) shaft torque (in Newton-meter)=');
P_in=V_s*abs(I_a)*pf;
Eff=P_o*100/P_in;
disp(Eff,'(d) Efficiency (%)=');
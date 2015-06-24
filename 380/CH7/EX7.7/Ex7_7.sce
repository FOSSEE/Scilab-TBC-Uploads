//Caption:Find the (a) voltage regulation (b)efficiency (c)torque developed
//Exa:7.7
clc;
clear;
close;
V=208;//in volts
N_m=1200;//speed of generator (in rpm)
P_r=9000;//rated power in (Volt-Amperes)
Z_a=0.3+(%i*5);//armature impedance (ohm/phase)
R_f=4.5;//feild winding resistance
P_rot=500;//rotational loss (in Watts)
I_f=5;//feild winding current
pf=0.8;//lagging
V_a=int (V/sqrt(3));
theta=(-1)*acosd(pf);
I_a_o=P_r/(3*V_a);//per phase armature current (magnitude)
I_a=I_a_o*(cosd(theta)+(%i*sind(theta)));
E_a=V_a+(I_a*Z_a);//per phase generated voltage
VR=((abs(E_a)-V_a)/V_a)*100;
disp(VR,' (a) Voltage Regulation (%)=');
P_o=3*V_a*abs(I_a)*pf;//power output 
P_cu=3*((abs(I_a))^2)*0.3;//copper loss
P_d=P_o+P_cu;//power developed
P_c=P_rot+(I_f^2)*R_f;//constant loss
P_in=P_d+P_c;//power input
Eff=(P_o/P_in)*100;
disp(ceil(Eff),'(b) Efficiency (%)=');
w_s=2*%pi*N_m/60;
T=(P_d+P_rot)/w_s;
disp(T,'(c) Torque developed (in Newton-meter)=');
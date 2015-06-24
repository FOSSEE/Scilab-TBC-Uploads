//Caption:Calculate (i)-dc electron velocity,(ii)-dc phase constant, (iii)-plasma frequency, (iv)-reduced plasma frequency for R=0.4, (v)-dc beam current beam density, (vi)-instantaneous beam current density
//Exa:8.1
clc;
clear;
close;
V_o=14.5*10^3;//in volts
I_o=1.4;//in A
f=10*10^9;//in Hz
p_o=10^-6;//in c/m^3
p=10^-8;//in c/m^3
v=10^5;//in m/s
R=0.4;
v_o=0.593*10^6*sqrt(V_o);
k=2*%pi*f/v_o;
w_p=[1.759*10^11*(10^-6/(8.854*10^-12))]^0.5;
w_q=R*w_p;
J_o=p_o*v_o;
J=p*v_o+p_o*v;
disp(v_o,'Dc electron velocity (in m/s) =');
disp(k,'Dc phase constant (in rad/s) =');
disp(w_p,'Plasma frequency (in rad/s) =');
disp(w_q,'Reduced plasma frequency (in rad/s) =');
disp(J_o,'Dc beam current density (in A/sq. m) =');
disp(J,'Instantaneous beam current density(in A/sq. m) =');

//Answer in book are wrongly written as: (Dc phase constant =1.41* 10^8 rad/sec)
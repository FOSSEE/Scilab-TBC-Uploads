clc
//ex17.1
P_rot=900;      //rotational losses
V_L=440*complex(cos(0),sin(0));
R_s=1.2;
X_s=%i*2;
X_m=%i*50;
R_r_1=0.6;
R_r_2=19.4;
X_r=%i*0.8;
n_m=1746;      //machine operating speed in rpm
W_m=n_m*2*%pi/60;      //speed in radians per second
n_s=1800;      //synchronous speed for a four-pole monitor
s=(n_s-n_m)/n_s;      //slip
Z_s=R_s+X_s+(X_m*(R_r_1+R_r_2+X_r))/(X_m+R_r_1+R_r_2+X_r);      //impedance seen by the source
[Z_s_max,phi]=polar(Z_s);
Z_s_phi=real(phi);      //removing negligible imaginary part(if any is there)
PF=cos(Z_s_phi);      //power factor
V_s=V_L;      //phase voltage
I_s=V_s/Z_s;      //phase current
[I_s_max,I_s_phi]=polar(I_s);
I_L=I_s_max*sqrt(3);      //line current
P_in=3*I_s*V_s*PF;      //input power
V_x=I_s*(X_m*(R_r_1+R_r_2+X_r))/(X_m+R_r_1+R_r_2+X_r);
I_r=V_x/(X_r+R_r_1+R_r_2);
[I_r_max,I_r_phi]=polar(I_r);
P_s=3*R_s*I_s_max^2;      //copper loss in stator
P_r=3*R_r_1*I_r_max^2;      //copper loss in rotor
P_dev=3*(1-s)*R_r_1*I_r_max^2/s;      //developed power
//we may verify that P_in=P_dev+P_s+P_r to within rounding error
P_in=P_dev+P_s+P_r;      //input power
P_o=P_dev-P_rot;      //output power
T_o=P_o/W_m;      //output torque
eff=P_o*100/P_in;      //efficiency
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(PF,'Power factor')
disp(I_L,'line current in amperes')
disp(P_o,'output power in watts')
disp(T_o,'output torque in Nm')
disp(eff,'efficiency percentage is')

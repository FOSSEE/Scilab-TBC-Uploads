//Caption:Find the (1)external resistance (2)breaking torque (a) at the instant of plugging (b)when the speed of motor approaches zero
//Exa:6.9
clc;
clear;
close;
V_s=400;//voltage applied
R_f=200;//resistance of field winding
I_L=30;//in Amperes
w_m=100;//(rad/sec)
I_f=V_s/R_f;
R_a=1;//armature resistance (in ohms)
I_a=I_L-I_f;
E_a=V_s-(I_a*R_a);//back emf (in Volts)
V_t=E_a+V_s;//total voltage in armature ckt 
I_t=1.5*I_a;
R=(V_t/I_t)-R_a;
disp(R,'(1) external resistance (in ohms)=');
K_3=(E_a*V_s)/((R+R_a)*w_m);
K_4=((E_a/w_m)^2)/(R+R_a);
T_b=K_3+(w_m*K_4);
disp(T_b,'(2a) breaking torque at the instant of plugging (in Newton-meter)=');
disp(K_3,'(2b) breaking torque when speed of motor approaches zero (in Newton-meter)=');
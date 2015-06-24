// to calculate speed of motor

clc;
V=230;
R_f=115;        //field resistance
I_f=V/R_f;
P_g=100000;        //electric power (m/c running as generator)
I_L=P_g/V;
I_a=I_f+I_L;
R_a=.08;        //armature resitance
E_ag=V+I_a*R_a;
n_g=750;        //speed

P_m=9000;        //m/c running as motor
I_l=P_m/V;
I_A=I_l-I_f;
E_am=V-I_A*R_a;
n_m=(E_am/E_ag)*n_g;
disp(n_m,'motor speed(rpm)');
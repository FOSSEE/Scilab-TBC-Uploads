//Caption:Find the value of external resistance when motor develops (a) torque of 30 N-m at 2000rpm (b) torque of 30N-m at 715 rpm
//Exa:6.6
clc;
clear;
close;
V_s=120;//in Volts
R_fe=30;//resistance of feild winding
I_a=50;//armature current (in Amperes)
R_ag=0.2;//armature resistance of generator (in ohms)
R_am=0.3;//armature resistance of motor (in ohms)
N_m1=2000;
N_m2=715;
T=30;//torque (in Newton-meter)
w_m=(N_m1*2*%pi)/60;
P_d=T*w_m;//power developed
E_am=P_d/I_a;//back emf of motor
E_amn=E_am*N_m2/N_m1;//new back emf
V_t=E_am+(I_a*R_am);
V_tn=E_amn+(I_a*R_am);
E_ag=V_t+(I_a*R_ag);//induced emf of generator
E_agn=V_tn+(I_a*R_ag);//new induced emf of generator
I_f=1.75;//Refer to magnetization curve
I_fn=0.4;//Refer to magnetization curve
R_f=V_s/I_f;
R_fn=V_s/I_fn;
R_x=R_f-R_fe;
R_xn=R_fn-R_fe;
disp(R_x,'(a)   external resistance (in ohms)= ');
disp(R_xn,'(b)   external resistance (in ohms)= ');
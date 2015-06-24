// Caption: Finding maximum torque deliver by motor when it is supplied with the power from a)infinite bus b)turbine generator
// Example 5.3

clear;
close;
clc;
kVA_r=1500/3;//per phase
V_ta=2300/sqrt(3);//per phase
I_r=500000/V_ta;//per phase
X_sm=1.95;
I_a_X_sm=I_r*X_sm;//syn-reactance V-drop
E_afm=sqrt(V_ta^2+I_a_X_sm^2);
p_max=(V_ta*E_afm)/X_sm;//per phase
P_max=3*p_max;//power in 3 phase
W_s=2*%pi*4;
T_max=P_max/W_s;//torque-max
disp(T_max,'Maximum torque in newton-meteres=')
//Result
//Maximum torque in newton-meteres=123341.2

V_ta=2300/sqrt(3);//per phase
I_r=500000/V_ta;//per phase
X_sm=1.95;X_sg=2.65;//synchronous reactance of motor ang generator
I_a_X_sg=I_r*X_sg;//syn-reactance V-drop
E_afg=sqrt(V_ta^2+I_a_X_sg^2);
p_max=(E_afg*E_afm)/(X_sm+X_sg);//per phase
P_max=3*p_max;//power in 3 phase
W_s=2*%pi*4;
T_max=P_max/W_s;//torque-max
disp(T_max,'Maximum torque in newton-meteres=')
//Result
//Maximum torque in newton-meteres=65401.933

I_a=sqrt(E_afm^2+E_afg^2)/(X_sg+X_sm);
alpha=acos(E_afm/(I_a*(X_sg+X_sm)));

V_ta=E_afm-I_a*X_sm*cos(alpha)+%i*I_a*X_sm*sin(alpha);
disp(V_ta,'terminal voltage=')
//Result
//terminal voltage=874.14246 + 704.12478i 
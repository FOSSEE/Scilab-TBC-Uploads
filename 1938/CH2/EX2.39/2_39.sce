clc,clear
printf('Example 2.39\n\n')

V=220
R_a=0.5, R_x=1 //armature resistance and extra resistance
N_FL=500 //full load speed in r.p.m
I_a_FL=30

//part(i)   Full load 
E_b_FL= V- I_a_FL * R_a
//T (prop.) I_a... T is constant
I_a_dash_FL = I_a_FL 
E_b_dash_FL =  V- I_a_dash_FL * (R_a+R_x)
//N (prop.) E_b/phi   (prop.) E_b
N_dash_FL = N_FL*(E_b_dash_FL/E_b_FL)
printf('(i)Speed at full load torque =%.4f r.p.m\n',N_dash_FL)

//part(ii)
T2_by_T1 = 2
I_a_dash_FL  =  I_a_FL  *(T2_by_T1)
E_b_dash_FL =  V- I_a_dash_FL * (R_a+R_x)
N_dash_FL = N_FL*(E_b_dash_FL/E_b_FL)
printf('(ii)Speed at double full load torque =%.3f r.p.m\n',N_dash_FL)

//part(iii) ...stalling
E_b=0 //as speed is zero in case of stalling torque
I_a_stall=(V-E_b)/(R_a+R_x)
T_FL = E_b_FL * I_a_FL/(2*%pi*N_FL/60)
T_stall = T_FL *(I_a_stall/ I_a_FL)
printf('(iii)Stalling torque = %.3f Nm',T_stall)

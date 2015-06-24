clc,clear
printf('Example 2.16\n\n')

V=250, P=4 
R_a=0.1 , R_sh =124 //armature and shunt field resistance 
I_L0=4,N_0=1200
I_L_1=61
I_sh=V/R_sh
I_a0=I_L0-I_sh
V_brush= 2 //voltage loss due to brush
E_b0= V - I_a0*R_a- V_brush

I_a1=I_L_1 - I_sh
E_b1=V - I_a1*R_a -V_brush

phi1_by_phi0=1-(5/100)   //weakened by 5 %
N_1 = N_0 *(E_b1/E_b0) /phi1_by_phi0

printf('Full load speed is %.3f r.p.m',N_1)

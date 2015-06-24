clc,clear
printf('Example 2.28\n\n')

V=250,N_0=1000,I_0=5
R_a=0.2,R_sh=250 //armature and shunt field resistance
I_L=50 //on no load
I_sh=V / R_sh
I_a0 = I_0 - I_sh
I_a  = I_L - I_sh
E_b0 = V- I_a0*R_a
E_b1 = V- I_a *R_a

phi1_by_phi0 =1-(3/100) //weakens by 3 percent
//N (prop.) E_b/phi
N_1 = N_0 *(E_b1/E_b0) /phi1_by_phi0
printf('Speed when loaded and drawing 50A current is %.3f r.p.m',N_1)

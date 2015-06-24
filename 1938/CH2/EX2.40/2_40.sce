clc,clear
printf('Example 2.40\n\n')

V=230, I_a1=30
R_a=0.4,R_x=1.1//armature resistance and extra resistance
N_1=500

//part(i)
E_b1= V - I_a1*R_a
I_a2 = I_a1 //I_a is constant as T, phi are constant
E_b2= V - I_a2*(R_a+R_x)
N_2 = N_1 *(E_b2/E_b1) //Because N (prop.) E_b/phi (prop.) E_b
printf('(i)Speed at full load torque = %.3f r.p.m\n',N_2)

//part(ii)
T2_by_T1=1.5
I_a2= I_a1 * T2_by_T1
E_b2= V - I_a2*(R_a+R_x)
N_2 = N_1 *(E_b2/E_b1) //Because N (prop.) E_b/phi (prop.) E_b
printf('(ii)Speed at 1.5 times full load torque = %.3f r.p.m\n',N_2)

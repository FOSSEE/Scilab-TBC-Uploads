clc,clear
printf('Example 2.8\n\n')

R_a=0.2, R_se =0.3 //Resistance of armature and series field winding
//following variables correspond to load 1
V=250
N_1=800
I_1=20, I_a1=I_1,I_se1= I_a1
E_b1= V - I_a1*(R_a+R_se)
//following variables correspond to load 2
I_2=50, I_a2=I_2
E_b2= V - I_a2*(R_a+R_se)

//from speed equation it can be derived that,
N_2 = N_1 * (E_b2/E_b1) * (I_a1/I_a2)
printf('Speed on motor on no load  is %.0f r.p.m',N_2)

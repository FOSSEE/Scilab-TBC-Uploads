clc,clear
printf('Example 2.13\n\n')

V=120
R_a=0.2 , R_sh=60 //armature and field resistance
I_L1=40, N_1=1800 
I_sh= V/R_sh

I_a1=I_L1 - I_sh 
E_b1 = V -I_a1*R_a  //Induced emf at half load
T2_by_T1 =1/2 
I_a2=I_a1*(T2_by_T1)   //T (prop.)I_a
E_b2=V- I_a2*R_a//induced emf at half load
N_2 = N_1 *(E_b2/E_b1)  //N (prop.) E_b as phi is constant
printf('Speed on half load condition is %.2f r.p.m',N_2)

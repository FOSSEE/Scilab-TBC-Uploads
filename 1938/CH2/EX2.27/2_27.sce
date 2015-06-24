clc,clear
printf('Example 2.27\n\n')

V=230
N_1=1000,N_2=950
R_a=0.5, R_sh=230 //armature and shunt field resistance
I_L1=10

I_sh = V/R_sh
I_a1 = I_L1 - I_sh

//T (prop.) phi*I_a  (prop.) I_a with phi constant and T is constant due to full-load
I_a2=I_a1

E_b1 = V - I_a1*R_a
E_b2=E_b1*(N_2/N_1) //N (prop.) E_b /phi (prop.) E_b   as phi is constant

R_x = (V-E_b2)/I_a2  -R_a      
printf('Resistance to be inserted in series with armature = %.4f ohms',R_x)

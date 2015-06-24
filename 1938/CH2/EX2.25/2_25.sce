clc,clear
printf('Example 2.25\n\n')

I_L1=30,V=230
R_sh=230,R_a=1
I_sh= V / R_sh
I_a1= I_L1 - I_sh
E_b1 = V - I_a1*R_a

//T (prop.) phi*I_a (prop.) I_a   as phi is constant
//and torque is constant
I_a2 = I_a1
N2_by_N1= 1/2
//N (prop.) E_b/phi (prop.) E_b
E_b2= E_b1 *(N2_by_N1)
R_x= (V- E_b2)/I_a2 - R_a     //Because E_b2 = V - I_a2*(R_a + R_x)
printf('Resistance to be inserted in series = %.4f ohms ',R_x)

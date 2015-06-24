clc,clear
printf('Example 2.32\n\n')

V=230,R_a=0.5
N_1=800,N_2=600
I_a2 =20 , I_a1=I_a2
E_b1 = V - I_a1*R_a

//N (prop.) E_b/phi (prop.) E_b         as phi is constant
E_b2=E_b1 *(N_2/N_1)
//additional resistance required
R_x = (V -E_b2)/I_a2  - R_a   //because E_b2 = V - I_a2*(R_a+R_x)
printf('Additional resistance required = %.2f ohms ',R_x)

clc,clear
printf('Example 2.34\n\n')

V=250, I_a1=20, R_a=0.5
N_1=1000, N_2=500

//T (prop.) I_a and T_1=T_2
I_a2=I_a1
E_b1 = V - I_a1*R_a

//N (prop.) E_b
E_b2= E_b1 *(N_2/N_1)
R_x= (V-E_b2)/I_a2 - R_a   //because E_b2 = V - I_a2*(R_a+R_x)
printf('Additional resistance = %.0f ohms',R_x)
T3_by_T2=0.5   //torque is halved
I_a3= I_a2 *(T3_by_T2)   //new armature current
E_b3 = V - I_a3*(R_x + R_a)
N_3=E_b3*N_2 / E_b2 //N (prop.) E_b
printf('\nNew speed = %.3f rpm',N_3)

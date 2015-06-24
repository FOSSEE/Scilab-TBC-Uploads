clc,clear
printf('Example 2.10\n\n')

V=250
R_a=0.15, R_se=0.1, R_x=0.1 //Resitance of armature , series field winding and extra resistance
N_1 = 800 //initial speed before load torque is increased
I_1= 30 , I_a1=I_1 , I_se1 = I_1  //initial currents

T_2_by_T_1 = 1 + (50/100)  //50 percent increase as mentioned in question
I_se2_by_I_a2 = R_x/(R_x + R_se)  //from the figure

//T (prop.) phi*I_a (prop.) I_sh*I_a and T_1=T_2 and simplifying ,solving further 
I_a2=sqrt(I_a1*I_se1*T_2_by_T_1/I_se2_by_I_a2) //new armature current
I_se2 = I_se2_by_I_a2 *I_a2 //new series field current

E_b1 = V - I_a1*R_a - I_se1*R_se //indiced emf initially
E_b2 = V - I_a2*R_a - I_se2*R_se //new induced emf
N_2 = N_1 * (E_b2/E_b1) * (I_se1/I_se2) //required speed
printf('The required running speed of motor is %.3f r.p.m',N_2)

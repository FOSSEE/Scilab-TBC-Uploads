clc,clear
printf('Example 2.30\n\n')

V=220
I_L=52
N_1=750, N_2=600
R_a=0.2, R_sh = 110 //armature and shunt field resistance

I_sh=V/ R_sh
I_a1= I_L - I_sh
I_a2=I_a1//T (prop.) I_a  and T is constant
E_b1 = V - I_a1*R_a

//N (prop.) E_b/phi (prop.) E_b
E_b2 = E_b1*(N_2/N_1)
R_x  = (V- E_b2)/I_a2 -R_a  //Because E_b2 = V - I_a2*(R_a+R_x)
printf('Resistance to be connected in series = %.2f ohms\n',R_x)

//After R_x gets connected in series with armature and 110 ohms in series with field winding
N_1=600
I_sh2=V /(R_sh+110)
I_a1=50,I_sh1=2,I_sh2=1
//T (prop.) I_a*I_sh and T doesn't vary
I_a2 = I_a1*(I_sh1/I_sh2)
E_b1 = V - I_a1*(R_a+R_x)
E_b2 = V - I_a2*(R_a+R_x)
N_2 = N_1*(E_b2/E_b1)*(I_sh1/I_sh2) //Because N (prop.) E_b/I_sh
printf('New speed= %.3f rpm',N_2)

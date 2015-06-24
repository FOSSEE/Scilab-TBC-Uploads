clc,clear
printf('Example 2.31\n\n')

V=230
R_a=0.15,R_sh=250 //armature and shunt field resistance
I_a1=50, I_a2= 80
N_1=800, N_2=1000
I_sh1= V / R_sh

E_b1 = V - I_a1*R_a
E_b2 = V - I_a2*R_a

I_sh2=I_sh1*(E_b2/E_b1)*(N_1/N_2) //Because N (prop.) E_b/ I_sh
R_x= (V/I_sh2 ) - R_sh    //because I_sh2 = V /(R_x+ R_sh)
printf('Resistance to be added is \n\nR_x=%.0f ohms',R_x)

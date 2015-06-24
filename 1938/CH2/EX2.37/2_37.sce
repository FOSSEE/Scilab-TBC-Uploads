clc,clear
printf('Example 2.37\n\n')

V=250, I_a1=20
R_sh= 250,R_a=0.5 //shunt field and armature resistance
I_sh1= V / R_sh
E_b1 = V - I_a1*R_a

//T (prop.) phi*I_a (prop.) I_sh*I_a
//since T_1 = T_2, I_sh2_I_a2 = I_sh1*I_a1  
I_sh2_I_a2 = I_sh1*I_a1  //=20

//N (prop.) E_b/I_sh
//E_b1 = V - I_a1*R_a
//Solving further for I_a2, we get I_a2^2 -500 I_a2 + 12800
p=[1 -500 12800]
roots(p)
I_a2=ans(2) //higher root is neglected
I_sh2= I_sh2_I_a2 / I_a2
R_x= (V / I_sh2) - R_sh //resistance to be inserted in shunt field
printf('Resistance to be inserted = %.4f ohms ',R_x)

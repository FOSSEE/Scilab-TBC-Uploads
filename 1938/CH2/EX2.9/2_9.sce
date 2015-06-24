clc,clear
printf('Example 2.9\n\n')

V=250
R_a=0.3,R_sh=200  //resistance of armature and shunt field winding
R_x=150 //additional resistance added in series to field winding
I_L1=22
I_sh1=V/R_sh //initial shunt current before adding 150 ohms resistance
I_a1 = I_L1 - I_sh1 //initial armature current before adding 150 ohms resistance
N_1=1500 //initial speed before adding 150 ohms resistance
//T (prop.) phi*I_a (prop.) I_sh*I_a and T_1=T_2 and simplifying further 
I_sh2=V/(R_sh + R_x) //new shunt current
I_a2= I_sh1*I_a1/I_sh2  //New armature current

E_b1=V - I_a1*R_a   //induced emf before adding 150 ohms resistance
E_b2=V - I_a2*R_a   //new emf

N_2 = N_1 * (E_b2/E_b1) * (I_sh1/I_sh2) //new speed
printf('New armature current and speed are %.4f A and %.2f r.p.m respectively',I_a2,N_2)

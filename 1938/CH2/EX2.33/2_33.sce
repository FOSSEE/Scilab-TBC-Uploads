clc,clear
printf('Example 2.33\n\n')

V=220
R_a=0.5,R_x=5 //armature resistacne and extra resistance
I_1=15, I_se1=I_1, I_se2=I_se1 , I_2=I_se2
N_1=800

E_b1 = V - I_1*R_a
E_b2 = V - I_2*(R_a+R_x)

N_2= N_1*(E_b2/E_b1)*(I_se1/I_se2) //because N (prop.) E_b/I_se
printf('New speed of rotor = %.3f r.p.m',N_2)

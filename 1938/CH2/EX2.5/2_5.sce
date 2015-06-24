clc,clear
printf('Example 2.5\n\n')

Pole=4
Z=200 //No of armature conductors
A=2 //wave connected armature
V=250
phi=25*10^-3 //flux per pole in weber
I_a =60, I_L =I_a  //armature current
R_a=0.15, R_se=0.2 //resistances of armature and series field winding
E_b= V - I_a*(R_a+R_se)  //induced emf
N=E_b * 60*A/(phi*Pole*Z)   //because E_b = phi*P*N*Z/(60*A)
printf('Required speed is %.0f r.p.m',N)

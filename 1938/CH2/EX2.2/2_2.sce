clc,clear
printf('Example 2.2\n\n')

Pole=4
A=Pole //for lap winding
V=230
Z=250 //number of armature conductors
phi=30*10^-3 //flux per pole in weber
I_a=40,R_a=0.6 //Armature resistance
 
E_b=V - I_a*R_a   // Since V= E_b+ I_a*R_a
N=E_b * 60*A/(phi*Pole*Z)   //because E_b = phi*P*N*Z/(60*A)
printf('Back emf is %.0f V and running speed is %.0f rpm',E_b,N)

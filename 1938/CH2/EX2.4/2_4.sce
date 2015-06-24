clc,clear
printf('Example 2.4\n\n')

Pole=4
A=Pole //for lap winding
V=230,R_a=0.8 //Armature resistance
N_0=1000 //no load speed in rpm
Z=540 //number of armature conductors
phi=25*10^-3 //flux per pole in weber
E_b0 = phi*Pole*N_0*Z/(60*A)  //induced emf

//part(i)
printf('(i)Induced e.m.f = %.0f V\n',E_b0)
//part(ii)
I_a0 = (V- E_b0)/R_a  //because V= E_b0+ I_a0*R_a
printf('(ii)Armature current = %.2f A\n',I_a0)
//part(iii)
stray_losses = E_b0*I_a0  //on no load ,power developed is fully power required to overcome strya losses
printf('(iii)Stray loss = %.2f W\n',stray_losses)
//part(iv)
T_f = E_b0*I_a0/(2*%pi*N_0/60)  //lost torque
printf('(iv)Lost torque = %.3f N-m\n',T_f)

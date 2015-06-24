clc,clear
printf('Example 2.1\n\n')

V=220
I_a=30 //armature currnet
R_a=0.75 //Armature resistance

E_b=V - I_a*R_a   // Since V= E_b+ I_a*R_a
printf('Induced EMF or back EMF in the motor is %.1f V',E_b)

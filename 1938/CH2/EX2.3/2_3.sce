clc,clear
printf('Example 2.3\n\n')

Pole=4
A=Pole //for lap winding
Z=480//number of armature conductors
phi=20*10^-3 //flux per pole in weber
I_a=50 //Armature current
T_a = 0.159*phi*I_a*Pole*Z/A  //Gross torque developed by armature
printf('Gross torque developed by armature is %.3f N-m',T_a)

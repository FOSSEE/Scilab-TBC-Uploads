//Problem 21.15: An 8-pole d.c. motor has a wave-wound armature with 900 conductors. The useful flux per pole is 25 mWb. Determine the torque exerted when a current of 30 A flows in each armature conductor.

//initializing the variables:
p = 4;
c = 2; // for a wave winding
Phi = 25E-3; // Wb
Z = 900;
Ia = 30; // in Amperes

//calculation:
//torque T = p*Phi*Z*Ia/(pi*c)
T = p*Phi*Z*Ia/(1*%pi*c)

printf("\n\n Result \n\n")
printf("\n the torque exerted is %.1f Nm ",T)
//Problem 21.17: A six-pole lap-wound motor is connected to a 250 V d.c. supply. The armature has 500 conductors and a resistance of 1 ohm. The flux per pole is 20 mWb. Calculate (a) the speed and (b) the torque developed when the armature current is 40 A

//initializing the variables:
p = 1; // let
c = 2*p; // for a lap winding
Phi = 20E-3; // Wb
Z = 500;
V = 250; // in Volts
Ra = 1; // in ohms
Ia = 40; // in Amperes

//calculation:
//Back e.m.f. E = V - Ia*Ra
E = V - Ia*Ra
//E.m.f. E = 2*p*Phi*n*Z/c
// rearrange,
n = E*c/(2*p*Phi*Z)
//torque T = E*Ia/(2*n*pi)
T = E*Ia/(2*n*%pi)

printf("\n\n Result \n\n")
printf("\n (a)speed n is %.0f rev/sec ",n)
printf("\n (b)the torque exerted is %.2f Nm ",T)
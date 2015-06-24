//Problem 21.02: A 4-pole generator has a lap-wound armature with 50 slots with 16 conductors per slot. The useful flux per pole is 30 mWb. Determine the speed at which the machine must be driven to generate an e.m.f. of 240 V.

//initializing the variables:
Z = 50*16; // no. of conductors
p = 1; // let no. of pairs
c = 2*p; // for a lap winding
Phi = 30E-3; // in Wb
E = 240; // in Volts

//calculation:
//Generated e.m.f., E = 2*p*Phi*n*Z/c
//Rearranging gives, speed
n = E*c/(2*p*Phi*Z)

printf("\n\n Result \n\n")
printf("\n the speed at which the machine must be driven is %.0f rev/sec ",n)
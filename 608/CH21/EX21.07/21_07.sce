//Problem 21.07: Determine the terminal voltage of a generator which develops an e.m.f. of 200 V and has an armature current of 30 A on load. Assume the armature resistance is 0.30 ohm. 

//initializing the variables:
Ra = 0.30; // in ohms
Ia = 30; // in Amperes
E = 200; // in Volts

//calculation:
//terminal voltage,
//V = E - Ia*Ra
V = E - Ia*Ra

printf("\n\n Result \n\n")
printf("\n terminal voltage of a generator is %.0f V ",V)
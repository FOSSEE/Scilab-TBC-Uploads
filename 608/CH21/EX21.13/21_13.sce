//Problem 21.13: A d.c. motor operates from a 240 V supply. The armature resistance is 0.2 ohm. Determine the back e.m.f. when the armature current is 50 A.

//initializing the variables:
Ra = 0.2; // in ohms
V = 240; // in Volts
Ia = 50; // in Amperes

//calculation:
//For a motor, V = E + Ia*Ra
E = V - Ia*Ra

printf("\n\n Result \n\n")
printf("\n back e.m.f. is %.0f V ",E)
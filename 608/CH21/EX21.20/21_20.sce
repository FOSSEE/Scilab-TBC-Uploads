//Problem 21.20: A 240 V shunt motor takes a total current of 30 A. If the field winding resistance Rf = 150 ohm and the armature resistance Ra = 0.4 ohm. determine (a) the current in the armature, and (b) the back e.m.f.

//initializing the variables:
Rf = 150; // in Ohms
Ra = 0.4; // in Ohms
I = 30; // in Amperes
V = 240; // in Volts

//calculation:
//Field current If
If = V/Rf
//Supply current I = Ia + If
//Hence armature current, Ia
Ia = I - If
//Back e.m.f. E = V - Ia*Ra
E = V - (Ia*Ra)

printf("\n\n Result \n\n")
printf("\n (a)  current in the armature is %.1f A ",Ia)
printf("\n (b) Back e.m.f. E is %.2f V ",E)
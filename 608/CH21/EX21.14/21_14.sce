//Problem 21.14: The armature of a d.c. machine has a resistance of 0.25 ohm and is connected to a 300 V supply. Calculate the e.m.f. generated when it is running: (a) as a generator giving 100 A, and (b) as a motor taking 80 A.

//initializing the variables:
Ra = 0.25; // in ohms
V = 300; // in Volts
Ig = 100; // in Amperes
Im = 80; // in Amperes

//calculation:
//As a generator, generated e.m.f.,
// E = V + Ia*Ra
Eg = V + Ig*Ra
//For a motor, generated e.m.f. (or back e.m.f.),
// E = V - Ia*Ra
E = V - Im*Ra

printf("\n\n Result \n\n")
printf("\n (a)As a generator, generated e.m.f. is %.0f V ",Eg)
printf("\n (b)back e.m.f. is %.0f V ",E)
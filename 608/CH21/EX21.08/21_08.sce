//Problem 21.08: A generator is connected to a 60 ohm load and a current of 8 A flows. If the armature resistance is 1 ohm determine (a) the terminal voltage, and (b) the generated e.m.f.

//initializing the variables:
RL = 60; // in ohms
Ia = 8; // in Amperes
Ra = 1; // in ohms

//calculation:
//terminal voltage,
//V = Ia*RL
V = Ia*RL
//Generated e.m.f., E
E = V + Ia*Ra

printf("\n\n Result \n\n")
printf("\n (a)terminal voltage is %.0f V ",V)
printf("\n (b)generated e.m.f. is %.0f V ",E)
//Problem 2.03: 

//initializing the variables:
mg = 100; // in lb
Pg = 35; // in psig
A = 3; // in in2
gc = 1; // in lb/lbf
Pa = 14.7; // in psi

//calculation:
F = mg/gc
Pli = F/A // in lbf/in2
Plf = Pli*144 // in lbf/ft2
P = Pg + Pa

printf("\n\nResult\n\n")
printf("\n pressure at the base is %.0f lbf/ft2\n",Plf)
printf("\n absolute pressure is %.1f psia\n",P)

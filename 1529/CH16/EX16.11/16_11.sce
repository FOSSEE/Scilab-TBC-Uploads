//Chapter 16, Problem 11, Fig 16.13(a)
clc;
f = 50;                     // in ohm
V = 240;                    // in Volts
pf = 0.6                    // power factor
Im = 50;                    // in amperes

//calculation:
phi = acos(pf)
phid = phi*180/%pi
Ic = Im*sin(phi)
I = Im*cos(phi)
printf("\n\n (a)The capacitor current Ic must be %.0f A for the power factor to be unity. ",Ic)
printf("\n\n (b)Supply current I = %.0f A ",I)

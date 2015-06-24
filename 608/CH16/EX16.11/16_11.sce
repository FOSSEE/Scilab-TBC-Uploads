//Problem 16.11: A single-phase motor takes 50 A at a power factor of 0.6 lagging from a 240 V, 50 Hz supply. Determine (a) the current taken by a capacitor connected in parallel with the motor to correct the power factor to unity, and (b) the value of the supply current after power factor correction.

//initializing the variables:
f = 50; // in ohm
V = 240; // in Volts
pf = 0.6// power factor
Im = 50; // in amperes

//calculation:
phi = acos(pf)
phid = phi*180/%pi
Ic = Im*sin(phi)
I = Im*cos(phi)

printf("\n\n Result \n\n")
printf("\n (a)the capacitor current Ic must be %.0f A for the power factor to be unity. ",Ic)
printf("\n (b)Supply current I = %.0f A ",I)
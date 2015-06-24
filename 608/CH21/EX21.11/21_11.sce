//Problem 21.11: A short-shunt compound generator supplies 80 A at 200 V. If the field resistance, Rf = 40 ohm, the series resistance, Rse = 0.02ohms  and the armature resistance, Ra = 0.04 ohm, determin  the e.m.f. generated.

//initializing the variables:
Is = 80; // in amperes
Vs = 200; // in Volts
Rf = 40; // in ohms
Rse = 0.02; // in ohms
Ra = 0.04; // in ohms

//calculation:
//Volt drop in series winding
Vse = Is*Rse
//P.d. across the field winding = p.d. across armature
V1 = Vs + Vse
//Field current, If
If = V1/Rf
//Armature current
Ia = If + Is
//Generated e.m.f. E
E = V1 + Ia*Ra

printf("\n\n Result \n\n")
printf("\n generated e.m.f. is %.0f V ",E)
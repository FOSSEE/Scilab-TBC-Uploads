//Problem 21.10: A shunt generator supplies a 20 kW load at 200 V through cables of resistance, R = 100 mohm. If the field winding resistance, Rf=D 50ohm  and the armature resistance, Ra = 40 mohm, determine (a) the terminal voltage, and (b) the e.m.f. generated in the armature.

//initializing the variables:
Ps = 20000; // in Watts
Vs = 200; // in Volts
Rs = 0.1; // in ohms
Rf = 50; // in ohms
Ra = 0.04; // in ohms

//calculation:
//Load current, I
Is = Ps/Vs
//Volt drop in the cables to the load
Vd = Is*Rs
//Hence terminal voltage,
V = Vs + Vd
//Field current, If
If = V/Rf
//Armature current
Ia = If + Is
//Generated e.m.f. E
E = V + Ia*Ra

printf("\n\n Result \n\n")
printf("\n (a)terminal voltage is %.0f V ",V)
printf("\n (b)generated e.m.f. is %.2f V ",E)
//Problem 21.23: A series motor has an armature resistance of 0.2 ohm and a series field resistance of 0.3 ohm. It is connected to a 240 V supply and at a particular load runs at 24 rev/s when drawing 15 A from the supply. (a) Determine the generated e.m.f. at this load. (b) Calculate the speed of the motor when the load is changed such that the current is increased to 30 A. Assume that this causes a doubling of the flux.

//initializing the variables:
Ia1 = 15; // in Amperes
Ia2 = 30; // in Amperes
Rf = 0.3; // in ohms
Ra = 0.2; // in ohm
n1 = 24; // in Rev/sec
V = 240; // in Volts
x= 2;

//calculation:
//generated e.m.f., E, at initial load, is given by
E1 =  V - Ia1*(Ra + Rf)
//When the current is increased to 30 A, the generated e.m.f. is given by:
E2 =  V - Ia2*(Ra + Rf)
//E proportional to (Phi*n)
//E1/E2 = Phi1*n1/Phi2*n2
//Phi2 = x*Phi1
n2 = E2*n1/(E1) 

printf("\n\n Result \n\n")
printf("\n (a)generated e.m.f., E is %.1f V ",E1)
printf("\n (b)speed of motor, n2, %.2f A ",n2)
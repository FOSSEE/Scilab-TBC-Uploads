//Problem 21.29: On full-load a 300 V series motor takes 90 A and runs at 15 rev/s. The armature resistance is 0.1 ohm and the series winding resistance is 50 mohm. Determine the speed when developing full load torque but with a 0.2 ohm diverter in parallel with the field winding. (Assume that the flux is proportional to the field current.)

//initializing the variables:
Ia1 = 90; // in Amperes
Ra = 0.1; // in ohm
Rse = 0.05; // in ohm
Rd = 0.2; // in Ohm
n1 = 15; // in rev/sec
V = 300; // in Volts

//calculation:
//e.m.f. E1
E1 = V - Ia1*(Ra + Rse)
//With the Rd diverter in parallel with Rse
//equivalent resistance, Re
Re = Rd*Rse/(Rd+Rse)
//Torque, T proprtional to Ia*Phi and for full load torque, Ia1*Phi1 = Ia2*Phi2
//Since flux is proportional to field current Phi1 proportional to Ta1 and Phi2 Proportional to I1
I1 =  (Ia1*Ia1*0.8)^0.5
//By current division, current I1
Ia2 = I1/(Rd/(Rd + Rse))
//Hence e.m.f. E2
E2 = V - Ia2*(Ra + Re)
//E1/E2 = Phi1*n1/Phi2*n2
n2 = E2*Ia1*n1/(I1*E1)

printf("\n\n Result \n\n")
printf("\n speed n2 is %.2f rev/sec", n2)
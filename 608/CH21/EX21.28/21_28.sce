//Problem 21.28: A 500 V shunt motor runs at its normal speed of 10 rev/s when the armature current is 120 A. The armature resistance is 0.2 ohm.  (a) Determine the speed when the current is 60 A and a resistance of 0.5 ohm is connected in series with the armature, the shunt field remaining constant. (b) Determine the speed when the current is 60 A and the shunt field is reduced to 80% of its normal value by increasin resistance in the field circuit.

//initializing the variables:
Ia1 = 120; // in A
Ia2 = 60; // in A
Ra = 0.2; // in ohm
n1 = 10; // in rev/sec
R = 0.5; // in ohm
x = 0.8;
V = 500; // in Volts

//calculation:
//back e.m.f. at Ia1
E1 = V - Ia1*Ra
//at Ia2
E2 = V - Ia2*(Ra + R)
//E1/E2 = Phi1*n1/Phi2*n2
Phi2 = Phi1
n2 = Phi1*n1*E2/(Phi2*E1)
//Back e.m.f. when Ia2
E3 = V - Ia2*Ra
Phi3 = x*Phi1
n3 = Phi1*n1*E3/(Phi3*E1)

printf("\n\n Result \n\n")
printf("\n (a)speed n2 is %.2f rev/sec", n2)
printf("\n (b)speed n3 is %.2f rev/sec", n3)
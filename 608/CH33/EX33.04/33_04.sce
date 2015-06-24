//Problem 33.04:For the network shown in Figure 33.22, use Th´evenin’s theorem to determine the current flowing in the 80 ohm resistor.

//initializing the variables:
V = 100; // in volts
R1 = 5; // in ohm
R2 = 20; // in ohm
R3 = 46; // in ohm
R4 = 50; // in ohm
R5 = 15; // in ohm
R6 = 60; // in ohm
R7 = 16; // in ohm
R8 = 80; // in ohm

//calculation:
//One method of analysing a multi-branch network as shown in Figure 33.22 is to use Th´evenin’s theorem on one part of the network at a time. For example, the part of the circuit to the left of AA may be reduced to a Th´evenin equivalent circuit.
//From Figure 33.23,
E1 = (R2/(R1 + R2))*V
z1 = R1*R2/(R1 + R2)
//Thus the network of Figure 33.22 reduces to that of Figure 33.24. The part of the network shown in Figure 33.24 to the left of BB may be reduced to a Th´evenin equivalent circuit, where
E2 = (R4/(R3 + R4 + z1))*E1
z2 = R4*(z1 + R3)/(R4 + z1 + R3)
//Thus the original network reduces to that shown in Figure 33.25. The part of the network shown in Figure 33.25 to the left of CC may be reduced to a Th´evenin equivalent circuit, where
E3 = (R6/(R5 + R6 + z2))*E2
z3 = R6*(z2 + R5)/(R5 + z2 + R6)
//Thus the original network reduces to that of Figure 33.26, from which the current in the 80 ohm resistor is given by
I = E3/(z3 + R7 + R8)

printf("\n\n Result \n\n")
printf("\n the current flowing in the 80 ohm resistor is %.2f A",I)
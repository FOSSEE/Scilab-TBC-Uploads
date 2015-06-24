//Problem 13.18: (a) Convert the circuit to the left of terminals AB in Figure 13.45(a) to an equivalent Th´evenin circuit by initially converting to a Norton equivalent circuit. (b) Determine the current flowing in the 1.8 ohm resistor.

//initializing the variables:
E1 = 12; // in volts
E2 = 24; // in volts
R1 = 3; // in ohms
R2 = 2; // in ohms
R3 = 1.8; // in ohms

//calculation:
//For the branch containing the V1 source, converting to a Norton equivalent network gives
Isc1 = E1/R1
r1 = R1
//For the branch containing the V2 source, converting to a Norton equivalent network gives
Isc2 = E2/R2
r2 = R2
//Thus the network of Figure 13.46(a) converts to Figure 13.46(b).
//total short-circuit current
Isct = Isc1 + Isc2
//the resistance is
z = r1*r2/(r1 + r2)
//Both of the Norton equivalent networks shown in Figure 13.46(c) may be converted to Th´evenin equivalent circuits. The open-circuit voltage across CD is
Vcd = Isct*z
//the current I flowing in a 1.8 ohm resistance connected between A and B is given by:
I = Vcd/(z + R3)

printf("\n\n Result \n\n") 
printf("\n the current I flowing in a 1.8 ohm resistance connected between A and B is given by %.2f A",I)
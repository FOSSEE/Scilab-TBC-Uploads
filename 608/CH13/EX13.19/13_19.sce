//Problem 13.19: Determine by successive conversions between Th´evenin and Norton equivalent networks a Th´evenin equivalent circuit for terminals AB of Figure 13.46(a). Hence determine the current flowing in the 200 ohm resistance.

//initializing the variables:
V1 = 10; // in volts
V2 = 6; // in volts
R1 = 2000; // in ohms
R2 = 3000; // in ohms
R3 = 600; // in ohms
R4 = 200; // in ohms
i = 0.001; // in amperes

//calculation:
//For the branch containing the V1 source, converting to a Norton equivalent network gives
Isc1 = V1/R1
r1 = R1
//For the branch containing the V2 source, converting to a Norton equivalent network gives
Isc2 = V2/R2
r2 = R2
//Thus the network of Figure 13.46(a) converts to Figure 13.46(b).
//total short-circuit current
Isct = Isc1 + Isc2
//the resistance is
z = r1*r2/(r1 + r2)
//Both of the Norton equivalent networks shown in Figure 13.46(c) may be converted to Th´evenin equivalent circuits. The open-circuit voltage across CD is
Vcd = Isct*z
//The open-circuit voltage across EF is
Vef = i*R3
//the resistance ‘looking-in’ at EF is
r3 = R3
//Thus Figure 13.46(c) converts to Figure 13.46(d). Combining the two Th´evenin circuits gives
E = Vcd - Vef
r = z + r3
//the current I flowing in a 200 ohm resistance connected between A and B is given by:
I = E/(r + R4)

printf("\n\n Result \n\n") 
printf("\n the current I flowing in a 200ohm resistance connected between A and B is given by:is %.2E A",I)
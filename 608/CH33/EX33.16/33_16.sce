//Problem 33.16: Determine, by successive conversions between Th´evenin’s and Norton’s equivalent networks, a Th´evenin equivalent circuit for terminals AB of Figure 33.76. Hence determine the magnitude of the current flowing in the capacitive branch connected to terminals AB.

//initializing the variables:
V1 = 5; // in volts
V2 = 10; // in volts
i = 0.001; // in Amperes
R1 = 1000; // in ohm
R2 = 4000; // in ohm
R3 = 2000; // in ohm
R4 = 200; // in ohm
R5 = -1*%i*4000; // in ohm

//calculation: 
//For the branch containing the V1 source, conversion to a Norton equivalent network gives
Isc1 = V1/R1
z1 = R1
//For the branch containing the V2 source, conversion to a Norton equivalent circuit gives
Isc2 = V2/R2
z2 = R2
//Thus the circuit of Figure 33.76 converts to that of Figure 33.77.
//The above two Norton equivalent networks shown in Figure 33.77 may be combined, since the total short-circuit current is
Isc = Isc1 + Isc2
//the total impedance is given by
Z1 = z1*z2/(z1 + z2)
//Both of the Norton equivalent networks shown in Figure 33.78 may be converted to Th´evenin equivalent circuits. Open-circuit voltage across CD is
Ecd = Isc*Z1
//the impedance ‘looking in’ at CD is Z1
//Open-circuit voltage across EF
Eef = i*R3
//the impedance ‘looking in’ Figure 33.79 at EF
Z2 = R3
//Thus Figure 33.78 converts to Figure 33.79.
//Combining the two Th´evenin circuits gives e.m.f.
E = Ecd - Eef
//impedance z
z = Z1 + Z2
//the Th´evenin equivalent circuit for terminals AB of Figure 33.76 is as shown in Figure 33.80.
Z3 = R4 + R5
//If an impedance Z3 is connected across terminals AB, then the current I flowing is given by
I = E/(z + Z3)
Imag = (real(I)^2 + imag(I)^2)^0.5

printf("\n\n Result \n\n")
printf("\n the current in the capacitive branch is %.2E A", Imag)
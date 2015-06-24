//Problem 33.15: (a) Convert the circuit to the left of terminals AB in Figure 33.72 to an equivalent Th´evenin circuit by initially converting to a Norton equivalent circuit. (b) Determine the magnitude of the current flowing in the (1.8+i4) ohm impedance connected between terminals A and B of Figure 33.72.

//initializing the variables:
E1 = 12; // in volts
E2 = 24; // in volts
Z1 = 3; // in ohm
Z2 = 2; // in ohm
R1 = %i*4; // in ohm
R2 = 1.8; // in ohm

//calculation:
Z3 = R1 + R2
//For the branch containing the E1 source, conversion to a Norton equivalent network gives
Isc1 = E1/Z1
//For the branch containing the E2 source, conversion to a Norton equivalent circuit gives
Isc2 = E2/Z2
//Thus Figure 33.73 shows a network equivalent to Figure 33.72. From Figure 33.73, the total short-circuit current
Isc = Isc1 + Isc2
//the total impedance is given by
z = Z1*Z2/(Z1 + Z2)
//Thus Figure 33.73 simplifies to Figure 33.74.
//The open-circuit voltage across AB of Figure 33.74, E
E = Isc*z
//the impedance ‘looking in’ at AB,is z
//the Th´evenin equivalent circuit is as shown in Figure 33.75.
R = 1.8 + %i*4; // in ohm
//when R impedance is connected to terminals AB of Figure 33.75, the current I flowing is given by
I = E/(z + R)
Imag = (real(I)^2 + imag(I)^2)^0.5

printf("\n\n Result \n\n")
printf("\n the magnitude of the current flowing (1.8 + i4) ohm resistor is %.2f A", Imag)
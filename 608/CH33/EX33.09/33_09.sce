//Problem 33.09: Use Norton’s theorem to determine the value of current I in the circuit shown in Figure 33.47.

//initializing the variables:
V = 5; // in volts
R1 = 2; // in ohm
R2 = 3; // in ohm
R3 = -1*%i*3; // in ohm
R4 = 2.8; // in ohm

//calculation:
//The branch containing the R4 is short-circuited, as shown in Figure 33.48.
//The R2 in parallel with a short-circuit is the same as R2 in parallel with 0 ohm giving an equivalent impedance of
Z1 = R2*0/(R3 + 0)
//Hence the network reduces to that shown in Figure 33.49, where
Isc = V/R1
//If the Voltage source is removed from the network the input impedance, z, ‘looking-in’ at a break made in AB of Figure 33.48 gives
z = R1*R2/(R1 + R2)
//The Norton equivalent network is shown in Figure 33.51, where current I is given by
I = (z/(z + R4 + R3))*Isc

printf("\n\n Result \n\n")
printf("\n  the current flowing in the capacitor is %.2f + (%.2f)i A",real(I), imag(I))
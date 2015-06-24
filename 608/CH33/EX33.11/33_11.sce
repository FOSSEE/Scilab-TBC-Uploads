//Problem 33.11: Use Norton’s theorem to determine the magnitude of the p.d. across the 1 ohm resistance of the network shown in Figure 33.55.

//initializing the variables:
V = 10; // in volts
R1 = 4; // in ohm
R2 = 4; // in ohm
R3 = -1*%i*2; // in ohm
R4 = 1; // in ohm

//calculation:
//The branch containing the R4 is initially short-circuited, as shown in Figure 33.56.
//R2 in parallel with R3 in parallel with 0 ohm (i.e., the short-circuit) is equivalent 0 ohm giving the equivalent circuit of Figure 33.57. Hence Isc
Isc = V/R1
//The voltage source is removed from the network of Figure 33.55, as shown in Figure 33.58, and the impedance z, ‘looking in’ at a break made in AB is given by
z = 1/(1/R1 + 1/R2 + 1/R3)
//The Norton equivalent network is shown in Figure 33.59, from which current I is given by
I = (z/(z + R4))*Isc
Imag = (real(I)^2 + imag(I)^2)^0.5
Vr1 = Imag*R4

printf("\n\n Result \n\n")
printf("\n the magnitude of the p.d. across the 1 ohm resistor is %.2f V", Vr1)
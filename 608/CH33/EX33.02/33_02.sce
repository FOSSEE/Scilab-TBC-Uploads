//Problem 33.02: Determine, for the network shown in Figure 33.16, the value of current I. Each of the voltage sources has a frequency of 2 kHz.

//initializing the variables:
V1 = 20; // in volts
V2 = 10; // in volts
R1 = 2; // in ohm
R2 = 1.5; // in ohm
L = 235E-6; // in Henry
R4 = 3; // in ohm
f = 2000; // in Hz

//calculation:
//The impedance through which current I is flowing is initially removed from the network, as shown in Figure 33.17.
//From Figure 33.17,
//current, I1 
I1 = (V1 - V2)/(R1 + R4)
//the open circuit e.m.f. E
E = V1 - I1*R1
//When the sources of e.m.f. are removed from the circuit, the impedance, z, ‘looking in’ at the break is given by
z = R1*R4/(R1 + R4)
//The Th´evenin equivalent circuit is shown in Figure 33.18, where inductive reactance,
XL = 2*%pi*f*L
R3 = %i*XL
//Hence current
I = E/(R2 + R3 + z)

printf("\n\n Result \n\n")
printf("\n the current I is %.2f + (%.2f)i A",real(I), imag(I))
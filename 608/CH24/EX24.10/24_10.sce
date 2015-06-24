//Problem 24.10: A 240 V, 50 Hz voltage is applied across a series circuit comprising a coil of resistance 12 ohm and inductance 0.10 H, and 120 μF capacitor. Determine the current flowing in the circuit.

//initializing the variables:
R = 12; // in ohms
L = 0.10; // in henry
C = 120E-6; // in Farads
f = 50; // in Hz
V = 240; // in volts

//calculation:
//Inductive reactance, XL
XL = 2*%pi*f*L
//Capacitive reactance, Xc
Xc = 1/(2*%pi*f*C)
//Circuit impedance Z
Z = R + %i*(XL - Xc)
I = V/Z
phii = atan(imag(I)/real(I))*180/%pi
phiv = 0 // in degrees
phi = phiv - phii

printf("\n\n Result \n\n")
printf("\n the current flowing is %.2f + (%.2f)i A\n",real(I), imag(I))
printf("and Circuit phase angle is %.2f°\n",phi)
//Problem 15.26: A pure inductance is connected to a 150 V, 50 Hz supply, and the apparent power of the circuit is 300 VA. Find the value of the inductance.

//initializing the variables:
VI = 300; // in VA
V = 150; // in Volts
f = 50; // in Hz

//calculation:
I = VI/V
XL = V/I
L = XL/(2*%pi*f)

printf("\n\n Result \n\n")
printf("\n Inductance = %.3f H",L)
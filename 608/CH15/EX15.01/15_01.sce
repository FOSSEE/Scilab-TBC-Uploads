//Problem 15.01: (a) Calculate the reactance of a coil of inductance 0.32 H when it is connected to a 50 Hz supply. (b) A coil has a reactance of 124 ohm in a circuit with a supply of frequency 5 kHz. Determine the inductance of the coil.

//initializing the variables:
L = 0.32; // in Henry
f1 = 50; // in Hz
f2 = 5000; // in Hz
Z = 124; // in ohms

//calculation:
XL = 2*%pi*f1*L
L = Z/(2*%pi*f2)

printf("\n\n Result \n\n") 
printf("\n (a)Inductive reactance, XL = %.1f ohms ", XL)
printf("\n (b)Inductance L = %.2E H",L)
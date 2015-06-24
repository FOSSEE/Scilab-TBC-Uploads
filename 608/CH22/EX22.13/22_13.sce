//Problem 22.13: For the induction motor of Problems 22.10 to 22.12, determine the resistance of the rotor winding required for maximum starting torque.

//initializing the variables:
V = 415; // in Volts
f = 50 ; // in Hz
nr = 24; // in rev/sec
p = 4/2; // no. of pole pairs
R2 = 0.35; // in Ohms
X2 = 3.5; // in Ohms

//calculation:
//At the moment of starting, slip, 
s = 1
//Maximum torque occurs when rotor reactance equals rotor resistance
//for maximum torque
R2 = s*X2

printf("\n\n Result \n\n")
printf("\nresistance of the rotor is %.1f Ohm",R2)
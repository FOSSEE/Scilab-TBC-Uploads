//Problem 26.01: A coil of resistance 5 ohm and inductive reactance 12 ohm is connected across a supply voltage of 526/_30volts. Determine the active power in the circuit.

//initializing the variables:
RL = %i*12; // in ohm
R = 5; // in ohm
rv = 52; // in volts
thetav = 30; // in degree

//calculation:
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//impedance, Z
Z = R + RL
//current
I = V/Z
//Active power, P
Pa = real(V)*real(I) + imag(V)*imag(I)

printf("\n\n Result \n\n")
printf("\nthe active power in the circuit %.0f W\n",Pa)
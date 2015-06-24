//Problem 3.13: Some copper wire has a resistance of 200 ohms at 20°C. A current is passed through the wire and the temperature rises to 90°C. Determine the resistance of the wire at 90°C, correct to thenearest ohm, assuming that the temperature coefficient of resistance is 0.004/°C at 0°C.

//initializing the variables:
R20 = 200; // in ohms
T0 = 20; // in °C
T1 = 90; // in °C
a0 = 0.004; // in per°C
pi = 3.14;

//calculation:
R90 = R20*[1 + (a0*T1)]/[1 + (a0*T0)]

printf("\n\nResult\n\n")
printf("\nResistance %.0f ohms\n",R90)
//Problem 3.09: An aluminium cable has a resistance of 27 ohms at a temperature of 35°C. Determine its resistance at 0°C. Take the temperature coefficient of resistance at 0°C to be 0.0038/°C

//initializing the variables:
R1 = 27; // in ohms
T0 = 0; // in °C
T1 = 35; // in °C
a0 = 0.0038; // in per°C
pi = 3.14;

//calculation:
R0 = R1/[1 + (a0*T1)]

printf("\n\nResult\n\n")
printf("\nresistance %.2f Ohm\n",R0)
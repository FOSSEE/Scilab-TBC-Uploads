//Problem 3.10: A carbon resistor has a resistance of 1 kohms at 0°C. Determine its resistance at 80°C. Assume that the temperature coefficient of resistance for carbon at 0°C is 0.0005/°C

//initializing the variables:
R0 = 1000; // in ohms
T0 = 0; // in °C
T1 = 80; // in °C
a0 = -0.0005; // in per°C
pi = 3.14;

//calculation:
R80 = R0*[1 + (a0*T1)]

printf("\n\nResult\n\n")
printf("\nresistance %.0f Ohm\n",R80)
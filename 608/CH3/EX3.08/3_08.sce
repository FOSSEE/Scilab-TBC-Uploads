//Problem 3.08: A coil of copper wire has a resistance of 100 ohms when its temperature is 0°C. Determine its resistance at 70°C if the temperature coefficient of resistance of copper at 0°C is 0.0043/°C

//initializing the variables:
R0 = 100; // in ohms
T0 = 0; // in °C
T1 = 70; // in °C
a0 = 0.0043; // in per°C
pi = 3.14;

//calculation:
R70 = R0*[1 + (a0*T1)]

printf("\n\nResult\n\n")
printf("\nresistance %.1f Ohm\n",R70)
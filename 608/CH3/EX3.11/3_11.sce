//Problem 3.11: A coil of copper wire has a resistance of 10 ohms at 20°C. If the temperature coefficient of resistance of copper at 20°C is 0.004/°C determine the resistance of the coil when the temperature rises to 100°C.

//initializing the variables:
R20 = 10; // in ohms
T0 = 20; // in °C
T1 = 100; // in °C
a20 = 0.004; // in per°C
pi = 3.14;

//calculation:
R100 = R20*[1 + (a20)*(T1 - T0)]

printf("\n\nResult\n\n")
printf("\nresistance %.1f Ohm\n",R100)
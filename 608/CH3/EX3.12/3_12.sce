//Problem 3.12: The resistance of a coil of aluminium wire at 18°C is 200 ohms. The temperature of the wire is increased and the resistance rises to 240 ohms. If the temperature coefficient of resistance of aluminium is 0.0039/°C at 18°C determine the temperature to which the coil has risen.

//initializing the variables:
R18 = 200; // in ohms
R1 = 240; // in ohms
T0 = 18; // in °C
a18 = 0.0039; // in per°C
pi = 3.14;

//calculation:
T1 = (((R1/R18)-1)/a18) + T0

printf("\n\nResult\n\n")
printf("\nTemperature %.2f °C\n",T1)
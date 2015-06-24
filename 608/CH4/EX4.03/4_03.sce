//Problem 4.03: The p.d. at the terminals of a battery is 25 V when no load is connected and 24 V when a load taking 10 A is connected. Determine the internal resistance of the battery.

//initializing the variables:
e1 = 25; // in volts
e2 = 24; // in volts
I2 = 10; // in Amperes

//calculation:
r = (e1 - e2)/I2

printf("\n\nResult\n\n")
printf("\n Resistance %.1f Ohms\n",r)
//Problem 2.06: A 100 V battery is connected across a resistor and causes a current of 5 mA to flow. Determine the resistance of the resistor. If the voltage is now reduced to 25 V, what will be the new value of the current flowing?

//initializing the variables:
I = 0.005; // in Ampere
V1 = 100; // in Volts
V2 = 25; // in Volts

//calculation:
//resistance
R = V1/I
//Current when voltage is reduced to 25 V,
I = V2/R

printf("\n\nResult\n\n")
printf("\nResistance(R): %.0f Ohms",R)
printf("\n Current when voltage is reduced to 25 V is %.2E A",I)
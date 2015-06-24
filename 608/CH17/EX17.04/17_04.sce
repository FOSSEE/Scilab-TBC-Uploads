//Problem 17.04: A circuit consists of a resistor connected in series with a 0.5 μF capacitor and has a time constant of 12 ms. Determine (a) the value of the resistor, and (b) the capacitor voltage 7 ms after connecting the circuit to a 10 V supply

//initializing the variables:
C = 0.5E-6; // in Farads
V = 10; // in Volts
tou = 0.012; // in secs
t1 = 0.007; // in secs

//calculation:
R = tou/C
Vc = V*(1-%e^(-1*t1/tou))

printf("\ = \n\n Result \n\n")
printf("\n (a)value of the resistor is %.0f ohm",R)
printf("\n (b)capacitor voltage is %.2f V",Vc)
//Problem 5.05:Two resistors are connected in series across a 24 V supply and a current of 3 A flows in the circuit. If one of the resistors has a resistance of 2 ohms determine (a) the value of the other resistor, and (b) the p.d. across the 2  resistor. If the circuit is connected for 50 hours, how much energy is used?

//initializing the variables:
Vt = 24; // in volts
R1 = 2; // in ohms
I = 3; // in Amperes
t = 50; // in hrs

//calculation:
V1 = I*R1
R2 = [Vt-(I*R1)]/I
E = Vt*I*t

printf("\n\nResult\n\n")
printf("\n (a)Voltage(V1) %.0f Volts(V)",V1)
printf("\n (b)Resistance(R2) %.0f Ohms",R2)
printf("\n (a)Energy(E) %.2E Wh",E)
//Problem 17.06: A 0.1 μF capacitor is charged to 200 V before being connected across a 4 kohm resistor. Determine (a) the initial discharge current, (b) the time constant of the circuit, and (c) the minimum time required for the voltage across the capacitor to fall to less than 2 V

//initializing the variables:
C = 0.1E-6; // in Farads
R = 4000; // in ohms
V = 200; // in Volts
Vc1 = 2; // in Volts

//calculation:
tou = R*C
I = V/R
t = -1*tou*log(Vc1/V)

printf("\ = \n\n Result \n\n")
printf("\n (a) initial discharge current is %.2f A",I)
printf("\n (b)Time constant tou is %.4f sec",tou)
printf("\n (c)minimum time required for the voltage across the capacitor to fall to less than 2 V is %.3f sec",t)
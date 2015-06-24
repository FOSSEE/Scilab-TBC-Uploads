//Problem 17.11 A coil having an inductance of 6 H and a resistance of R  is connected in series with a resistor of 10  to a 120 V, d.c. supply. The time constant of the circuit is 300 ms. When steady-state conditions have been reached, the supply is replaced instantaneously by a short-circuit. Determine: (a) the resistance of the coil,(b) the current flowing in the circuit one second after the shorting link has been placed in the circuit, and (c) the time taken for the current to fall to 10% of its initial value.

//initializing the variables:
L = 6; // in Henry
r = 10; // in ohms
V = 120; // in Volts
tou = 0.3; // in secs
t1 = 1; // in secs

//calculation:
R = (L/tou) - r
Rt = R + r
I = V/Rt
i2 = 0.1*I
i1 = I*(%e^(-1*t1/tou))
t2 = -1*tou*log((i2/I))

printf("\ = \n\n Result \n\n")
printf("\n (a) resistance of the coil is %.0f ohm",R)
printf("\n (b) current flowing in the circuit one second after the shorting link has been placed is %.3f A",i1)
printf("\n (c)the time for the current to decay to 0.1 times of initial value is %.3f sec",t2)
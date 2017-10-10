//Problem 17.08: A coil of inductance 0.04 H and resistance 10 ohm is connected to a 120 V, d.c. supply. Determine (a) the final value of current, (b) the time constant of the circuit, (c) the value of current after a time equal to the time constant from the instant the supply voltage is connected, (d) the expected time for the current to rise to within 1% of its final value.

//initializing the variables:
L = 0.04; // in Henry
R = 10; // in ohms
V = 120; // in Volts


//calculation:
tou = L/R
t1 = tou
I = V/R
i1 = I*(1 - %e^(-1*t1/tou))
i2 = 0.01*I
t2 = -1*tou*log(i2/I)

printf("\ = \n\n Result \n\n")
printf("\n (a) the final value of current is %.0f A",I)
printf("\n (b)time constant of the circuit is %.3f sec",tou)
printf("\n (c) value of current after a time equal to the time constant is %.2f A",i1)
printf("\n (d)the expected time for the current to rise to within 0.01 times of its final value is %.2f sec",t2)
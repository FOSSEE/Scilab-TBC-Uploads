//Problem 17.12: An inductor has a negligible resistance and an inductance of 200 mH and is connected in series with a 1 kohm resistor to a 24 V, d.c. supply. Determine the time constant of the circuit and the steady-state value of the current flowing in the circuit. Find (a) the current flowing in the circuit at a time equal to one time constant, (b) the voltage drop across the inductor at a time equal to two time constants and (c) the voltage drop across the resistor after a time equal to three time constants.

//initializing the variables:
L = 0.2; // in Henry
R = 1000; // in ohms
V = 24; // in Volts

//calculation:
tou = L/R
t1 = 1*tou // in secs
t2 = 2*tou // in secs
t3 = 3*tou // in secs
I = V/R
i1 = I*(1 - %e^(-1*t1/tou))
VL = V*(%e^(-1*t2/tou))
VR = V*(1 - %e^(-1*t3/tou))

printf("\ = \n\n Result \n\n")
printf("\n time constant of the circuit is %.4f sec, and  the steady-state value of the current is %.3f A",tou, I)
printf("\n (a) urrent flowing in the circuit at a time equal to one time constant is %.5f A",i1)
printf("\n (b) voltage drop across the inductor at a time equal to two time constants is %.3f V",VL)
printf("\n (c)the voltage drop across the resistor after a time equal to three time constants is %.2f V",VR)
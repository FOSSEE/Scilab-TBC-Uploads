//Problem 17.09: The winding of an electromagnet has an inductance of 3 H and a resistance of 15 ohm. When it is connected to a 120 V, d.c. supply, calculate: (a) the steady state value of current flowing in the winding, (b) the time constant of the circuit, (c) the value of the induced e.m.f. after 0.1 s, (d) the time for the current to rise to 85% of its final value, and (e) the value of the current after 0.3 s.

//initializing the variables:
L = 3; // in Henry
R = 15; // in ohms
V = 120; // in Volts
t1 = 0.1; // in secs
t3 = 0.3; // in secs

//calculation:
tou = L/R
I = V/R
i2 = 0.85*I
VL = V*%e^(-1*t1/tou)
t2 = -1*tou*log(1 - (i2/I))
i3 = I*(1 - %e^(-1*t3/tou))

printf("\ = \n\n Result \n\n")
printf("\n (a) steady state value of current is %.0f A",I)
printf("\n (b)time constant of the circuit is %.3f sec",tou)
printf("\n (c)value of the induced e.m.f. after 0.1 s is %.2f V",VL)
printf("\n (d) time for the current to rise to 0.85 times of its final values is %.3f sec",t2)
printf("\n (e)value of the current after 0.3 s is %.3f A",i3)
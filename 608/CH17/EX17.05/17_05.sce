//Problem 17.05: A capacitor is charged to 100 V and then discharged through a 50 kohm resistor. If the time constant of the circuit is 0.8 s, determine: (a) the value of the capacitor, (b) the time for the capacitor voltage to fall to 20 V, (c) the current flowing when the capacitor has been discharging for 0.5 s, and (d) the voltage drop across the resistor when the capacitor has been discharging for one second.

//initializing the variables:
R = 50000; // in ohms
V = 100; // in Volts
Vc1 = 20; // in Volts
tou = 0.8; // in secs
t1 = 0.5; // in secs
t2 = 1; // in secs

//calculation:
C = tou/R
t = -1*tou*log(Vc1/V)
I = V/R
it1 = I*%e^(-1*t1/tou)
Vc = V*%e^(-1*t2/tou)

printf("\ = \n\n Result \n\n")
printf("\n (a)the value of the capacitor is %.2E F",C)
printf("\n (b)the time for the capacitor voltage to fall to 20 V is %.2f sec",t)
printf("\n (c)the current flowing when the capacitor has been discharging for 0.5 s is %.5f A",it1)
printf("\n (d)the voltage drop across the resistor when the capacitor has been discharging for one second is %.1f V",Vc)
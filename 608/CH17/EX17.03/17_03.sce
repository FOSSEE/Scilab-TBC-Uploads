//Problem 17.03: A 20 μF capacitor is connected in series with a 50 kohm resistor and the circuit is connected to a 20 V, d.c. supply. Determine (a) the initial value of the current flowing, (b) the time constant of the circuit, (c) the value of the current one second after connection, (d) the value of the capacitor voltage two seconds after connection, and (e) the time after connection when the resistor voltage is 15 V

//initializing the variables:
C = 20E-6; // in Farads
R = 50000; // in ohms
V = 20; // in Volts
t1 = 1; // in secs
t2 = 2; // in secs
VRt = 15; // in Volts

//calculation:
tou = R*C
I = V/R
Vct1 = V*(1-%e^(-1*t2/tou))
t3 = -1*tou*log(VRt/V)
it1 = I*%e^(-1*t1/tou)

printf("\ = \n\n Result \n\n")
printf("\n (a)initial value of the current flowing is %.4f A",I)
printf("\n (b)time constant of the circuit %.0f Sec",tou)
printf("\n (c)the value of the current one second after connection, %.3f mA",(it1/1E-3))
printf("\n (d)the value of the capacitor voltage two seconds after connection %.1f V",Vct1)
printf("\n (e)the time after connection when the resistor voltage is 15 V is %.3f sec",t3)
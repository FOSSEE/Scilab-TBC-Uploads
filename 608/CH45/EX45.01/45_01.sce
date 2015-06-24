//Problem 45.01: A 500 nF capacitor is connected in series with a 100 kohm resistor and the circuit is connected to a 50 V, d.c. supply. Calculate (a) the initial value of current flowing, (b) the value of current 150 ms after connection, (c) the value of capacitor voltage 80 ms after connection, and (d) the time after connection when the resistor voltage is 35 V.

//initializing the variables:
C = 500E-9; // in Farad
R = 100000; // in Ohm
V = 50; // in VOlts
ti = 0.15; // in sec
tc = 0.08; // in sec
Vrt = 35; // in Volts

//calculation:
//Initial current, 
i0 = (V/R)
//when time t = 150ms current is
i150 = (V/R)*%e^(-1*ti/(R*C))
//capacitor voltage, Vc
Vc = V*(1 - %e^(-1*tc/(R*C)))
//time, t
tvr = -1*R*C*log(Vrt/V)

printf("\n\n Result \n\n")
printf("\n initial value of current flowing is %.2E A",i0)
printf("\n current flowing at t = 150ms is %.2E A",i150)
printf("\n  value of capacitor voltage at t = 80ms is %.2f V",Vc)
printf("\n  the time after connection when the resistor voltage is 35 V is %.4f sec",tvr)

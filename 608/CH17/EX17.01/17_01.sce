//Problem 17.01: A 15 μF uncharged capacitor is connected in series with a 47 kohm resistor across a 120 V, d.c. supply. Use the tangential graphical method to draw the capacitor voltage/time characteristic of the circuit. From the characteristic, determine the capacitor voltage at a time equal to one time constant after being connected to the supply, and also two seconds after being connected to the supply. Also, find the time for the capacitor voltage to reach one half of its steady state value.

//initializing the variables:
C = 15E-6; // in Farads
R = 47000; // in ohms
V = 120; // in Volts

//calculation:
tou = R*C
t1 = tou
Vctou = V*(1-%e^(-1*t1/tou))
Vct = V/2
t = 0:0.1:10
Vc = V*(1-%e^(-1*t/tou));
plot(t,Vc)
xtitle("capacitor voltage/time characteristic", "t", "Vc")
t = -1*tou*log(1 - Vct/V)

printf("\ = \n\n Result \n\n")
printf("\n (a)the capacitor voltage at a time equal to one time constant = %.2f V",Vctou)
printf("\n (b)the time for the capacitor voltage to reach one half of its steady state value = %.1f sec",t)
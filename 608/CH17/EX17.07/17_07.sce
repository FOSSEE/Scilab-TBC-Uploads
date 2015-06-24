//Problem 17.07: A relay has an inductance of 100 mH and a resistance of 20 ohm. It is connected to a 60 V, d.c. supply. Use the ‘initial slope and three point’ method to draw the current/time characteristic and hence determine the value of current flowing at a time equal to two time constants and the time for the current to grow to 1.5 A.

//initializing the variables:
L = 0.1; // in Henry
R = 20; // in ohms
V = 60; // in Volts
i2 = 1.5; // in Amperes

//calculation:
tou = L/R
t1 = 2*tou
t = 0:0.0001:0.025
I = V/R
i = I*(1 - %e^(-1*t/tou))
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
i1 = I*(1 - %e^(-1*t1/tou))
t2 = -1*tou*log(1 - i2/I)

printf("\ = \n\n Result \n\n")
printf("\n (a) the value of current flowing at a time equal to two time constants is %.3f A",i1)
printf("\n (b)the time for the current to grow to 1.5 A is %.7f sec",t2)
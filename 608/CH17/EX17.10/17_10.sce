//Problem 17.10: The field winding of a 110 V, d.c. motor has a resistance of 15 ohms and a time constant of 2 s. Determine the inductance and use the tangential method to draw the current/time characteristic when the supply is removed and replaced by a shorting link. From the characteristic determine (a) the current flowing in the winding 3 s after being shorted-out and (b) the time for the current to decay to 5 A.

//initializing the variables:
R = 15; // in ohms
V = 110; // in Volts
tou = 2; // in secs
t1 = 3; // in secs
i2 =5; // in amperes

//calculation:
L = tou*R
t = 0:0.1:10
I = V/R
i = I*(%e^(-1*t/tou))
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
i1 = I*(%e^(-1*t1/tou))
t2 = -1*tou*log((i2/I))

printf("\ = \n\n Result \n\n")
printf("\n inductance is %.0f H",L)
printf("\n (a)the current flowing in the winding 3 s after being shorted-out is %.2f A",i1)
printf("\n (b)the time for the current to decay to 5 A is %.3f sec",t2)
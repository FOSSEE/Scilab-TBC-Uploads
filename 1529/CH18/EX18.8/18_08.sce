//Chapter 18, Problem 8
clc;
//initializing the variables:
L = 0.1;                //inductance in henry
R = 20;                 //resistance in ohms
V = 60;                 //supply voltage
i2 = 1.5;               // in amperes

//calculation:
taw = L/R
t1 = 2*taw
t = 0:0.0001:0.025
I = V/R
i = I*(1 - %e^(-1*t/taw))
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
i1 = I*(1 - %e^(-1*t1/taw))
t2 = -1*taw*log(1 - i2/I)


printf("\n (a)The value of current flowing at a time equal to two time constants = %.3f A\n\n",i1)
printf("\n (b)The time for the current to grow to 1.5 A = %.7f sec\n\n",t2)

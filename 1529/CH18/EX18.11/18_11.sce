//Chapter 18, Problem 11
clc;

//initializing the variables:
R = 15;                 //resistance in ohms
V = 110;                //supply voltage
taw = 2;                //time constant
t1 = 3;                 // in secs
i2 =5;                  // in amperes

//calculation:
L = taw*R
t = 0:0.1:10
I = V/R
i = I*(%e^(-1*t/taw))
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
i1 = I*(%e^(-1*t1/taw))
t2 = -1*taw*log((i2/I))


printf("\n Inductance is %.0f H\n\n",L)
printf("\n (a)The current flowing in the winding 3 s after being shorted-out = %.2f A\n\n",i1)
printf("\n (b)The time for the current to decay to 5 A = %.3f sec\n\n",t2)

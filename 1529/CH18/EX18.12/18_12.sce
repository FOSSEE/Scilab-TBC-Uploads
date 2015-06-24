//Chapter 18, Problem 12
clc;
//initializing the variables:
L = 6;              //inductance in henry
r = 10;             //resistance in ohms
V = 120;            //supply voltage
taw = 0.3;          //time constant
t1 = 1;             // in secs

//calculation:
R = (L/taw) - r
Rt = R + r
I = V/Rt
i2 = 0.1*I
i1 = I*(%e^(-1*t1/taw))
t2 = -1*taw*log((i2/I))

printf("\n (a)Resistance of the coil = %.0f ohm\n\n",R)
printf("\n (b)Current flowing in the circuit one second after the shorting link has been placed = %.3f A\n\n",i1)
printf("\n (c)The time for the current to decay to 0.1 times of initial value = %.3f sec\n\n",t2)

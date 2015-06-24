//Chapter 18, Problem 13
clc;
//initializing the variables:
L = 0.2;                    //inductance in henry
R = 1000;                   //resistance in ohms
V = 24;                     //supply voltage

//calculation:
taw = L/R
t1 = 1*taw // in secs
t2 = 2*taw // in secs
t3 = 3*taw // in secs
I = V/R
i1 = I*(1 - %e^(-1*t1/taw))
VL = V*(%e^(-1*t2/taw))
VR = V*(1 - %e^(-1*t3/taw))

printf("\n Time constant of the circuit is %.4f sec, and  the steady-state value of the current is %.3f A",taw, I)
printf("\n (a) Current flowing in the circuit at a time equal to one time constant = %.5f A\n\n",i1)
printf("\n (b) Voltage drop across the inductor at a time equal to two time constants = %.3f V\n\n",VL)
printf("\n (c)The voltage drop across the resistor after a time equal to three time constants = %.2f V\n\n",VR)

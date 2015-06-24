//Chapter 18, Problem 10
clc;

//initializing the variables:
L = 3;                  //inductance in henry
R = 15;                 //resistance in ohms
V = 120;                //supply voltage
t1 = 0.1;               // in secs
t3 = 0.3;               // in secs

//calculation:
taw= L/R
I = V/R
i2 = 0.85*I
VL = V*%e^(-1*t1/taw)
t2 = -1*taw*log(1 - (i2/I))
i3 = I*(1 - %e^(-1*t3/taw))

printf("(a)Steady state value of current = %.0f A\n\n",I)
printf("(b)Time constant of the circuit = %.3f sec\n\n",taw)
printf("(c)Value of the induced e.m.f. after 0.1 s = %.2f V\n\n",VL)
printf("(d)Time for the current to rise to 0.85 times of its final values = %.3f sec\n\n",t2)
printf("(e)Value of the current after 0.3 s = %.3f A\n\n",i3)

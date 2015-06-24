//Chapter 18, Problem 9
clc;
//initializing the variables:
L = 0.04;               //inductance in henry
R = 10;                 //resistance in ohms
V = 120;                //supply voltage


//calculation:
taw = L/R
t1 = taw
I = V/R
i1 = I*(1 - %e^(-1*t1/taw))
i2 = 0.01*I
t2 = -1*taw*log(i2/I)

printf("(a)The final value of current = %.0f A\n\n",I);
printf("(b)Time constant of the circuit = %.3f sec\n\n",taw);
printf("(c)Value of current after a time equal to the time constant = %.2f A\n\n",i1);
printf("(d)The expected time for the current to rise to within 0.01 times of its final value = %.2f sec\n\n",t2);

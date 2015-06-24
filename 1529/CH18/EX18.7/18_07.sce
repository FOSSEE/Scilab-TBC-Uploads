//Chapter 18, Problem 7
clc;

//initializing the variables:
C = 0.1E-6;             //capacitance in farads
R = 4000;               //resistance in ohms
V = 200;                //supply voltage
Vc1 = 2;                // in volts

//calculation:
taw = R*C
I = V/R
t = -1*taw*log(Vc1/V)

printf("\n (a)Initial discharge current = %.2f A\n\n",I)
printf("\n (b)Time constant tou = %.4f sec\n\n",taw)
printf("\n (c)Minimum time required for the voltage across the capacitor to fall to less than 2 V = %.3f sec",t)

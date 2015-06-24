//Problem 18.10: A steady voltage of -0.75V is applied to an op amp integrator having component values of R = 200 kohm and C = 2.5 μF. Assuming that the initial capacitor charge is zero, determine the value of the output voltage 100 ms after application of the input.

//initializing the variables:
Vs = -0.75; // in Volts
R = 200000; // in ohms
C = 2.5E-6; // in Farads
t = 0.1; // in secs

//calculation:
Vo = (-1/(C*R))*integrate('-0.75', 't', 0, 0.1)

printf("\n\n Result \n\n")
printf("\n output voltage is %.2f V",Vo)
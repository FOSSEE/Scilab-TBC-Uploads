//Problem 15.24: An instantaneous current, i = 250 sin wt mA flows through a pure resistance of 5 kohm. Find the power dissipated in the resistor.

//initializing the variables:
R = 5000; // in ohms
Imax = 0.250; // in Amperes

//calculation:
Irms = 0.707*Imax
P = Irms*Irms*R

printf("\n\n Result \n\n")
printf("\n Power, P = %.1f Watts",P)
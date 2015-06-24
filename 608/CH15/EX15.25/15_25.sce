//Problem 15.25: A series circuit of resistance 60 ohm and inductance 75 mH is connected to a 110 V, 60 Hz supply. Calculate the power dissipated.

//initializing the variables:
R = 60; // in ohms
L = 75E-3; // in Henry
V = 110; // in Volts
f = 60; // in Hz

//calculation:
XL = 2*%pi*f*L
Z = (R^2 + XL^2)^0.5
I = V/Z
P = I*I*R

printf("\n\n Result \n\n")
printf("\n Power, P = %.0f Watts",P)
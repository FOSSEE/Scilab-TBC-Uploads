//Problem 43.06: Two mutually coupled coils X and Y are connected in series to a 240 V d.c. supply. Coil X has a resistance of 5 ohm and an inductance of 1 H. Coil Y has a resistance of 10 ohm and an inductance of 5 H. At a certain instant after the circuit is connected, the current is 8 A and increasing at a rate of 15 A/s. Determine (a) the mutual inductance between the coils and (b) the coefficient of coupling.

//initializing the variables:
V = 240; // in Volts
Ra = 5; // in Ohm
La = 1; // in Henry
Rb = 10; // in Ohm
Lb = 5; // in Henry
I = 8; // in amperes
dIdt = 15; // in A/sec

//calculation:
//Kirchhoff’s voltage law
L = (V - I*(Ra + Rb))/dIdt
//mutual inductance, M
M = (L - La - Lb)/2
//coupling coefficient,
k = M/(La*Lb)^0.5

printf("\n\n Result \n\n")
printf("\n mutual inductance, M is %.0f H",M)
printf("\n coupling coefficient, is %.3f",k)
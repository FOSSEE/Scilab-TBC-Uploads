//Problem 43.09: Two coils x and y, with negligible resistance, have self inductances of 20 mH and 80 mH respectively, and the coefficient of coupling between them is 0.75. If a sinusoidal alternating p.d. of 5 V is applied to x, determine the magnitude of the open circuit e.m.f. induced in y.

//initializing the variables:
Lx = 20E-3; // in Henry
Ly = 80E-3; // in Henry
k = 0.75; // coupling coeff.
Ex = 5; // in Volts

//calculation:
//mutual inductance
M = k*(Lx*Ly)^0.5
//magnitude of the open circuit e.m.f. induced
Ey = M*Ex/Lx

printf("\n\n Result \n\n")
printf("\n mutual inductance is %.2f H",M)
printf("\n magnitude of the open circuit e.m.f. induced is %.2f V",Ey)
//Problem 3.10:

//initializing the variables:
B = -0.159; // in m3/kgmol
C = 0.009; // in (m3/kgmol)2
T = 400; // in K
P = 40; // in atm

//calculation:
//Virial equation.
//Z = PV/RT = 1 + B/V + C/V^2
//Insert the appropriate values of the terms and coefficients. Use R = 0.082 Latm/gmolK = 82.06 cm3.atm/gmol K
//40*V=(0.082)(400) = 1 + (-0.159)/V +(0.009)/V^2
//(1.22)(V) = 1 + (-0.159)/V + (0.009)/V^2
//Note that the equation cannot simply be explicitly solved for V. A trial-and-error solution is \n required and any suitable numerical (or analytical) technique may be employed.
//V is approximately 0.635 L/gmol
V = 0.635

printf("\n\nResult\n\n")
printf("\n the specific volume is %.3f L/gmol",V)

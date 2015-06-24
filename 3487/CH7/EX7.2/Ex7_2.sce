//Chapter 7,Example 7.2 Page 222
clc
clear
Lc = 0.3*10^-3 // H
Cc= 0.4*10^-6 // F
Ll = 1.5*10^-3 // H
Cl = 0.012*10^-6 //F
V = 15 // kV
Ic = sqrt(Lc/Cc) // The natural impedence of the cable
Il = sqrt(Ll/Cl) // The natural impedence of the line
E = 2*Il*V/(Ic+Il) 
printf ("The natural impedence of the cable = %f ohms \n",Ic) // unit failed to be mentioned 
printf (" The natural impedence of the line = %f ohms \n",Il)
printf (" E′′ = %f kV \n",E)

// Answers may vary due to round of error


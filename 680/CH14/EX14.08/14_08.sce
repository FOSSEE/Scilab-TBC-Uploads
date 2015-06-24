//Problem 14.08:

//initializing the variables:
pCl2 = 0.0;
pO2 = 0.106;
pH2O = 0.0292;
pHCl = 0.146;
P = 1; // in atm
T = 1250; // in K

//calculation:  
//By definition,
//K = Kp = pCl2*pH2O/(pHCl^2*pO2^0.5)
//At equilibrium 
//pCl2 = pCl2(initial) + x = x
//The term x represents the increase in the partial pressure of the chlorine due to this equilibrium reaction. In addition,
//pH2O = pH2O(initial) + x = 0.0292 + x
//pHCl = pHCl(initial) - 2x = 0.146 - 2x
//pO2 = pO2(initial) - 0.5x = 0.106 - 0.5x
//Kp can then be expressed as
//Kp = (x)*(0.0292 + x)/((0.146 - 2x)^2*(00.106 - 0.5x)^0.5)
//Now, calculate Kp at 1250K using the result from the equation above.
lnK = 7048.7/1250 + 0.015*log(1250) - 1250*9.06E-5 - (2.714E4)*1250^-2 - 8.09
K = %e^lnK
Kp = K
//Therefore,
//0.0842 = (x)*(0.0292 + x)/((0.146 - 2x)^2*(00.106 - 0.5x)^0.5)
//Solving for x, which is the equilibrium partial pressure of Cl2, by a trial-and-error calculation yields
x = 0.01050 // in atm
pCl2 = x
//Note that approximately 1% of the discharge flue gas is chlorine—a rather sizable amount

printf("\n\nResult\n\n")
printf("\n the equilibrium partial pressure of Cl2 %.5f atm",pCl2)

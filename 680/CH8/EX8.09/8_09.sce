//Problem 8.09:

//initializing the variables:
Tn = 100; // in deg C
P = 101370; // in Pa
dHn = 2200; // in kJ/Kg
Tc = 370; // in deg C
T = 250; // in deg C

//calculation:
dH250 = dHn*(1 - ((T - Tn)/(Tc - Tn))^2)

printf("\n\nResult\n\n")
printf("\n the enthalpy of vaporization is %.0f kJ/kg",dH250)
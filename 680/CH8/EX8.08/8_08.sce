//Problem 8.08:

//initializing the variables:
T1 = 100; // in deg C
P = 101370; // in Pa
dH100 = 2256.9; // in J/g
T2 = 200; // in deg C

//calculation:
Tr100 = (T1 + 273)/647
Tr200 = (T2 + 273)/647
dH200 = dH100*((1 - Tr200)/(1 - Tr100))^0.38

printf("\n\nResult\n\n")
printf("\n the enthalpy of vaporization is %.0f J/g",dH200)
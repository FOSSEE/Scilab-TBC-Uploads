//Problem 10.11:

//initializing the variables:
DH0T = -12236; // in cal/gmol

//calculation:
//DH0T = -9140 - 7.596*T + 4.243E-3*T^2 - 0.742E-6*T^3
//solving this, we get
T = 570 // in k
Tc = T - 273 // in deg C

printf("\n\nResult\n\n")
printf("\n the temperature is %.0fdeg C",Tc)
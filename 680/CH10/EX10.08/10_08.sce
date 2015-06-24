//Problem 10.08:

//initializing the variables:
EA = 150
T = 298; // in K

//calculation:
DHc = -1580.56 // in cal/gmol
//DCp = 14*Cpco2 + 2*Cph2o + 5*Cphcl + 22.5*Cpo2 + 141.05*Cpn2
//DCp = 1318.60 + 0.1899*T - 5.327E6*T^-2
//DHc = 1318.60(T2 - T) + 0.5*0.1899*(T2^2 - T^2) + 5.327E6(T2^-1 - 298^-1)
//solving this, we get
T2 = 1377 // in k
Tf = 9*(T2 - 273)/5 + 32 // in deg F

printf("\n\nResult\n\n")
printf("\n the operating temperature is %.0fdeg F",Tf)
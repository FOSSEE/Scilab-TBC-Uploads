//Problem 10.12:

//initializing the variables:
T = 250; // in Deg C

//calculation:
Tk = T + 273
//DH0T = -9140 - 7.596*T + 4.243E-3*T^2 - 0.742E-6*T^3
//solving this, we get
DH0523 = -9140 - 7.596*Tk + 4.243E-3*Tk^2 - 0.742E-6*Tk^3
Q = DH0523

printf("\n\nResult\n\n")
printf("\n heat must be added to or removed from a flow reactor per gmole of product formed is %.0f cal/gmol",Q)
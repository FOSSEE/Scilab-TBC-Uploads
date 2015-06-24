//Problem 10.13:

//initializing the variables:
ndt = 8; // gmol/h
T = 250; // in Deg C

//calculation:
Tk = T + 273
//DH0T = -9140 - 7.596*T + 4.243E-3*T^2 - 0.742E-6*T^3
//solving this, we get
DH0523 = -9140 - 7.596*Tk + 4.243E-3*Tk^2 - 0.742E-6*Tk^3
Qdt = ndt*DH0523

printf("\n\nResult\n\n")
printf("\n heat rate must be added to or removed from a flow reactor is %.0f cal/h",Qdt)
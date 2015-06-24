//Problem 3.01:

//initializing the variables:
Tc = 100; // in °F
Tf = 300; // in °F
qi = 3500; // in acfm

//calculation:
qf = qi*(Tf + 460)/(Tc + 460)

printf("\n\nResult\n\n")
printf("\n the final (f) volumetric flow rate of a gas is %.0f acfm\n",qf)
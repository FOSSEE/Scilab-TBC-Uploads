//Problem 7.05:

//initializing the variables:
Qt = 18.7E6; // in Btu/h
mdt = 72000; // in lb/h
Cpav = 0.26; // in Btu/lb.degF
T1 = 1200; // in deg F

//calculation:
T2 = [-1*Qt/(mdt*Cpav)]+T1

printf("\n\nResult\n\n")
printf("\n the outlet temperature of the gas stream is %.0f degF",T2)

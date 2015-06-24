//Problem 11.02:

//initializing the variables:
Tdb1 = 100; // in deg F
Twb = 70; // in deg F
Tdb2 = 80; // in deg F
p = 1; // in atm

//calculation:
//from fig. 11.2
Hi = 0.0090 // lb
Hf = 0.0133 // lb
dH = Hf - Hi

printf("\n\nResult\n\n")
printf("\n moisture added is %.2E lb H2O/lb dry air",dH)
//Problem 11.13:

//initializing the variables:
m = 100; // in lb
p = 40; // in psia
T1 = 77; // in deg F
ppm = 10000; // in ppmv
MCO2 = 44;

//calculation:
yCO2 = ppm/1E6
pCO2 = yCO2*p*760*14.7
//from fig 11.11
Y = 9.8 // lb CO2/100 lb Seive

printf("\n\nResult\n\n")
printf("\n the adsorbent capacity is %.1f lb CO2/100 lb Seive",Y)
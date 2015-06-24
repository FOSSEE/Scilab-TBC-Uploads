//Problem 11.05:

//initializing the variables:
T1 = 25; // in deg C
xa = 0.05
xb = 0.95
pa = 4150; // in kPa
pb = 16.1; // in kPa

//calculation:
P = xa*pa + xb*pb
ya = xa*pa/P
yb = 1 - ya

printf("\n\nResult\n\n")
printf("\n the pressure is %.1f kPa, composition of the first vapor is %.3f ehane  and %.3f hexane ",P, ya, yb)
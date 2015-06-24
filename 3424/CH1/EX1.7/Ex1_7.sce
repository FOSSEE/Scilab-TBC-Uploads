clc
//Initialization of variables
Si = 0.0728 // N/m
CsT = 1 
Gm = 9789 // N/m^3
h = 0.001 // m
// calculations
D = 2*(Si*2*CsT)/(Gm*h)
//Results
printf("The minimum tube diameter is %.1f mm",D*10^3)


//Problem 3.09:

//initializing the variables:
T = 230; // in deg celcius
P = 2500; // in psia
Pa = 14.7; // in psia

//calculation:
//critical values
Tc = 417 // in K
Pc = 76 // in atm
w = 0.074 // acentric factor
Tr = (T + 273)/Tc
Pr = P/(Pa*Pc)

printf("\n\nResult\n\n")
printf("\n the reduced temperature is %.2f and reduced pressure is %.2f",Tr,Pr)
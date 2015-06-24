clc
//initialisation of variables
clear
T= 25 //C
T1= 0 //C
h= 79.8 //cal g^-1
j= 4.18*10^7 //ergs
//CALCULATIONS
Wc= (T-T1)*h/(273+T1)
W= (T-T1)*h*j/(273+T1)
//RESULTS
printf ('Work required = %.1f cal',Wc)
printf ('\n Work required = %.2e ergs',W)

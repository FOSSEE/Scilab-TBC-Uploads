clc
//Initialization of variables
sig=5.668*10^-5
T1=1000 //K
T2=2000 //K
//calculations
Eb1=sig*T1^4 *10^-7
Eb2=sig*T2^4 *10^-7
//results
printf("total energy emitted in case 1 = %.3f Watts/cm^2",Eb1)
printf("\n total energy emitted in case 2 = %.3f Watts/cm^2",Eb2)

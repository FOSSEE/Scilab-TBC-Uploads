clc
clear
//Initialization of variables
T1=140+460 //R
T2=240 +460 //R
N=1
//calculations
Q=N*(9.47*(T2-T1)-3.47*10^3 *log(T2/T1) -1.16*10^6 *(1/T2-1/T1))
Tm=(T1+T2)/2
Cp=9.47-3.47*10^3 /Tm +1.16*10^6 /Tm^2
Q2=N*Cp*(T2-T1)
//results
printf("Heat added in case 1 = %d Btu",Q)
printf("\n Heat added in case 2 = %.1f Btu",Q2)

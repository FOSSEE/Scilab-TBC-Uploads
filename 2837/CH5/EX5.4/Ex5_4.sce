clc
clear
//Initialization of variables
Rj=1.985
N=1
T1=540+460 //R
T2=3540+460 //R
//calculations
Q=N*(14.215*(T2-T1)-6.53*10^3 *log(T2/T1) -1.41*10^6 *(1/T2-1/T1))
Tm=(T1+T2)/2
Cv=14.215-6.53*10^3 /Tm +1.41*10^6 /Tm^2
Q2=N*Cv*(T2-T1)
//results
printf("Heat added in case 1 = %.1f Btu",Q)
printf("\n Heat added in case 2 = %.1f Btu",Q2)

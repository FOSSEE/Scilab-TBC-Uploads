//Example number 9.9, Page number 206

clc;clear;
close;

//Variable declaration
Eg=6.408*10**-20;    //energy gap of semiconductor(J)
T1=273;    //temperature(K)
T2=323;    //temperature(K)
T3=373;    //temperature(K)
KB=1.38*10**-23;   //boltzmann constant
//Calculation
FE1=1/(1+exp(Eg/(2*KB*T1)));     //probability of occupation at 0C(eV)
FE2=1/(1+exp(Eg/(2*KB*T2)));     //probability of occupation at 50C(eV)
FE3=1/(1+exp(Eg/(2*KB*T3)));     //probability of occupation at 100C(eV)
//Result
printf("probability of occupation at 0C is %.3e eV",FE1)
printf("\n probability of occupation at 50C is %.2e eV",FE2)
printf("\n probability of occupation at 100C is %.2e eV",FE3)

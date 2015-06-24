clc();
clear;
// To calculate the probability of occupation
Eg=0.4;    //energy gap in eV
Eg=Eg*1.6*10^-19;    //Eg in J
KB=1.38*10^-23;
T1=0;   //temp 1 in C
T1k=T1+273;    //temp 1 in K
T2=50;   //temp 2 in C
T2k=T2+273;    //temp 2 in K
T3=100;   //temp 3 in C
T3k=T3+273;    //temp 3 in K
//F(E) = 1/(1+(exp((E-Ep)/(KB*T))))
//but E-Ep = (1/2)*Eg
//therefore F(E) = 1/(1+(exp(Eg/(2*KB*T))))
FE1=1/(1+(exp(Eg/(2*KB*T1k))));
FE2=1/(1+(exp(Eg/(2*KB*T2k))));
FE3=1/(1+(exp(Eg/(2*KB*T3k))));
printf("probability of occupation at 0 C is %f eV",FE1);
printf("probability of occupation at 50 C is %f eV",FE2);
printf("probability of occupation at 100 C is %f eV",FE3);

//answers given in the book are wrong

clc();
clear;
// To calculate the temperature
//let X=E-Ef
X=0.5;   //E-Ef=0.5 in eV
X=X*1.6*10^-19;   //X in J
FE=1/100;    //fermi function is 1% 
k=1.38*10^-23;
//FE=1/(1+exp(X/(k*T)))
//therefore 1/FE = 1+exp(X/(k*T))
//therefore (1/FE)-1 = exp(X/(k*T))
//therefore log((1/FE)-1) = X/(k*T)
//but log(x) = 2.303*log10(x)
//therefore T = X/(k*log((1/FE)-1))
//but log(x)=2.303*log10(x)
//therefore T = X/(k*2.303*log10((1/FE)-1))
T = X/(k*2.303*log10((1/FE)-1));
printf("temperature is %f K",T);

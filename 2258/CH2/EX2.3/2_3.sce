clc();
clear;
// To calculate the temperature
FE=10/100;    //fermi function is 10%
Ef=5.5;   //fermi energy of silver in eV
k=1.38*10^-23;
E=Ef+(Ef/100);
//FE=1/(1+exp((E-Ef)/(k*T)))
//therefore 1/FE = 1+exp((E-Ef)/(k*T))
//therefore (1/FE)-1 = exp((E-Ef)/(k*T))
//therefore log((1/FE)-1) = (E-Ef)/(k*T)
//therefore T = (E-Ef)/(k*log((1/FE)-1))
//let X=E-Ef;    
X=E-Ef;     //energy in eV
X=X*1.6*10^-19;    //energy in J
T = (X/(k*log((1/FE)-1)));
printf("temperature is %f K",T);

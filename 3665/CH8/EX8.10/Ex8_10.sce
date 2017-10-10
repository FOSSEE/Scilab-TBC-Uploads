clc//
//
//

//Variable declaration
k=1.38*10^-23;   //boltzmann constant
EF=0.18;      //fermi shift(eV)
E=1.2;       //energy gap(eV)
e=1.6*10^-19;  
r=5;   

//Calculation
T=EF*e*4/(3*k*log(r));    //temperature(K)

//Result
printf("\n temperature is %0.0f K",T)

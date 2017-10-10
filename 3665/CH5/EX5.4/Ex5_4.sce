clc//
//
//

//Variable declaration
FE=10/100;     //fermi function
EF=5.5;     //energy function(eV)
e=1.6*10^-19;     //charge(c)
k=1.38*10^-23;    //boltzmann constant(J)

//Calculation
E=EF+(EF/100);    //energy(eV)
x=log((1/FE)-1);
T=(E-EF)*e/(k*x);     //temperature(K)

//Result
printf("\n temperature is %0.1f K",T)

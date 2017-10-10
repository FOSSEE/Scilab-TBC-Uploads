clear
//
//
//

//Variable declaration
e=1.6*10^-19;         //charge of electron
z=0.3*10^-3;     //thickness(m)
VH=1*10^-3;      //hall voltage(V)
Ix=10*10^-3;     //current(A)
Bz=0.3;           //magnetic field(T)

//Calculation
n=Ix*Bz/(VH*z*e);      //charge carrier concentration(m^-3)

//Result
printf("\n charge carrier concentration is %e m^-3",n)

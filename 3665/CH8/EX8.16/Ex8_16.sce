clc//
//
//

//Variable declaration
Vy=37*10^-6;     //voltage(V)
t=10^-3;    //thickness(m)
Bz=0.5;      //magnetic field(wb/m^2)
Ix=20*10^-3;   //current(A)

//Calculation
RH=Vy*t/(Ix*Bz);     //hall coefficient(m^3/coulomb)

//Result
printf("\n hall coefficient is %e C-1 m^3",RH)

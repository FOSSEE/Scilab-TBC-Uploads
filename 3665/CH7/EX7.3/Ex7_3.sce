clc//
//
//

//Variable declaration
P=1.54*10^-8;     //resistance(ohm m)
n=5.8*10^28;      //number of electrons(per m^3)
m=9.108*10^-31;     //mass(kg)
e=1.602*10^-19;     //charge(coulomb)

//Calculation
t=m/(n*e^2*P);      //relaxation time of conduction electrons(s) 

//Result
printf("\n relaxation time of conduction electrons is %0.2f *10^-14 s",t*10^14)

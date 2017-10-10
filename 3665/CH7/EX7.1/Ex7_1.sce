clc//
//
//

//Variable declaration
rho_s=10.5*10^3;     //density(kg/m^3)
NA=6.02*10^26;       //avagadro number(per k mol)
MA=107.9;      //atomic mass
sigma=6.8*10^7;     //conductance(ohm-1 m-1)
e=1.6*10^-19;     //charge(coulomb)

//Calculation
n=rho_s*NA/MA;     //density of electrons
mew=sigma/(n*e);    //mobility of electrons(m^2/Vs)

//Result
printf("\n density of electrons is %0.2f *10^28",n/10^28)
printf("\n mobility of electrons is %0.3f *10^-2 m^2 V-1 s-1",mew*10^2)

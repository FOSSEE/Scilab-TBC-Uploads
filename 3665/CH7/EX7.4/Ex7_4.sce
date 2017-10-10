clc//
//
//

//Variable declaration
R=0.06;    //resistance(ohm)
I=15;      //current(A)
D=5;     //length(m)
MA=26.98;       //atomic mass
rho_s=2.7*10^3;    //density(kg/m^3)
NA=6.025*10^26;       //avagadro number(per k mol)
e=1.602*10^-19;     //charge(coulomb)

//Calculation
n=3*rho_s*NA/MA;     //free electron concentration(electrons/m^2)
mew=1/(n*e*rho_s*10^-11);     //mobility(m s-1 V-1)
E=I*R/D;     //electric field(V/m)
vd=mew*E;    //drift velocity of electrons(m/s)

//Result
printf("\n free electron concentration is %0.4f *10^29 electrons/m^2",n/10^29)
printf("\n mobility is %0.3f *10^-3 m s-1 V-1",mew*10^3)
printf("\n drift velocity of electrons is %0.2f *10^-3 m s-1",vd*10^3)

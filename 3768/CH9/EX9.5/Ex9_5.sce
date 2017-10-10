//Example number 9.5, Page number 204

clc;clear;
close;

//Variable declaration
w=72.6;       //atomic weight
e=1.6*10**-19;     //charge(c)
mew_e=0.4;        //electron mobility(m**2/Vs)
mew_h=0.2;       //hole mobility(m**2/Vs)
T=300;         //temperature(K)
x=4.83*10**21;
Eg=0.7;      //band gap(eV)
y=0.052;
//Calculation
ni=x*(T**(3/2))*exp(-Eg/y);     //carrier density(per m**3)
sigma=ni*e*(mew_e+mew_h);         //conductivity(ohm-1 m-1)
//Result
printf("carrier density is %.2e per m^3",ni)
printf("\n conductivity is %.2f (ohm-m)^-1",sigma)
//answer in the book varies due to rounding off errors

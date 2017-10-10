clc//
//
//

//Variable declaration
M=63.5;    //atomic weight
N=6.023*10^23;    //avagadro number
r=1.278*10^-8;    //radius(m)
n=4;

//Calculation
m=M/N;     //mass of copper atom(gm)
a=4*r/sqrt(2);
Mu=n*m;     //mass of unit cell
d=Mu/a^3;    //density of copper crystal(gm/cm^3)

//Result
printf("\n density of copper crystal is %0.3f gm/cm^3",d)

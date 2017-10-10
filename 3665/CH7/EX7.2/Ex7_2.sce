clc//
//
//

//Variable declaration
d=8.92*10^3;     //density(kg/m^3)
rho=1.73*10^-8;     //resistivity of copper(ohm m)
NA=6.02*10^26;       //avagadro number(per k mol)
Aw=63.5;      //atomic weight
m=9.1*10^-31;     //mass(kg)
e=1.6*10^-19;     //charge(coulomb)

//Calculation
n=d*NA/Aw;     //density of electrons
mew=1/(rho*n*e);    //mobility of electrons(m^2/Vs)
t=m/(n*e^2*rho);    //average time of collision(s)

//Result
printf("\n mobility of electrons is %0.3f *10^-2 m V-1 s-1",mew*10^2)
printf("\n average time of collision is %0.2f *10^-14 s",t*10^14)

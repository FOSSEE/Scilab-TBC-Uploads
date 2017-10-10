clc//
//
//

//Variable declaration
d=2.82*10^-10;    //distance(m)
k=1.38*10^-23;     //boltzmann constant(J/K)
e=1.6*10^-19;      //charge(eV)
T=273+25;    //temperature(K)
sd=5*10^11;    //schotky defects(per m^3)

//Calculation
V=(2*d)^3;    //volume of unit cell(m^3)
N=4/V;    //density of ion pairs
x=(log10(N/sd));

Es=2*(k/e)*T*2.303*x;       //average energy required(eV)

//Result
printf("\n average energy required is %0.3f eV",Es)

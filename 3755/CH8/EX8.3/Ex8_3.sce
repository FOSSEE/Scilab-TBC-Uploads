clear
//
//
//

//Variable declaration
me=9.1*10^-31;          //mass of electron(kg)
kb=1.38*10^-23;      //boltzmann constant
T=300;      //temperature(K)
h=6.62*10^-34;      //planck's constant
Eg=0.7;     //band gap(eV)
e=1.6*10^-19;      //charge(c)

//Calculation
x=2*%pi*me*kb*T/(h^2);  
n=2*(x^(3/2))*exp(-Eg*e/(2*kb*T));       //density of holes and electrons(per m^3)

//Result
printf("\n density of holes and electrons is %0.3f *10^19 per m^3",n/10^19)

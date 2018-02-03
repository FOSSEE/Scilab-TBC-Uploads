clear
//
//
//

//Variable declaration
e=1.602*10**-19      //charge(coulomb)
epsilon0=8.85*10**-12   
r0=0.281*10**-9      //equilibrium distance(m)
alphaM=1.748         //madelung constant
n=9                  //born constant

//Calculation
CE=-alphaM*e**2*((n-1)/n)/(4*e*%pi*epsilon0*r0)    //cohesive energy per molecule(eV)

//Result
printf("\n cohesive energy per atom is %0.3f  eV",CE)

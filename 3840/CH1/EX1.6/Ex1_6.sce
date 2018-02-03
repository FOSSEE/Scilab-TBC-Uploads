clear
//
//
//

//Variable declaration
e=1.6*10**-19      //charge(coulomb)
epsilon0=8.85*10**-12   
r0=0.281*10**-9    //equilibrium distance(m)
I=5.14             //ionisation energy(eV)
EA=-3.61           //electron affinity(eV)

//Calculation
V=-(e**2)/(4*e*%pi*epsilon0*r0)   //potential(eV)
CE=I+EA+V          //cohesive energy of molecule(eV)

//Result
printf("\n cohesive energy of molecule is %0.2f  eV",CE)

clear
//
//
//

//Variable declaration    
e=1.6*10^-19;      //charge(coulomb)
x=9*10^9;          
r0=2.81*10^-10;    //equilibrium distance(m)
A=1.748;      //madelung constant
n=9;       //repulsive exponent value

//Calculations
U0=-(x*A*e/r0)*(1-1/n);       //potential energy(eV)

//Result
printf("\n potential energy is %0.3f eV",U0/2)

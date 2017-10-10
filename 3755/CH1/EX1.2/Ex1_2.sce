clear
//
//
//

//Variable declaration    
e=1.6*10^-19;      //charge(coulomb)
x=9*10^9;          
r0=3.56*10^-10;    //equilibrium distance(m)
A=1.763;      //madelung constant
n=10.5;       //repulsive exponent value
IE=3.89;      //ionisation energy(eV)
EA=-3.61;     //electron affinity(eV)

//Calculations
U0=-(x*A*e/r0)*(1-1/n);       //ionic cohesive energy(eV)
U=U0+IE+EA;               //atomic cohesive energy(eV)

//Result
printf("\n ionic cohesive energy is %0.2f eV",U0)
printf("\n atomic cohesive energy is %0.2f eV",U)

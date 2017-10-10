
//Variable declaration
m=1;
n=9;     //repulsive exponent value
a=1.748*10**-28;     
r0=0.281*10**-9;     //seperation(m)
e=1.6*10**-19; 
//Calculation
Ur0=-a*(1-(m/n))/(e*r0**m);    //cohesive energy(eV)

//Result
printf('cohesive energy is %0.3f   eV  \n',(Ur0))

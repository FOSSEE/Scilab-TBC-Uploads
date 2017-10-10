
//Variable declaration
e=1.602*10**-19;   //charge of electron(c)
epsilon0=8.85*10**-12;    //permittivity(C/Nm)
r0=0.314*10**-9;     //seperation(m)
A=1.75;    //madelung constant
n=5.77;    //repulsive exponent value
IE=4.1;     //ionisation energy of K(eV)
Ea=3.6;     //electron affinity(eV)

//Calculation
E=-A*e**2*(1-(1/n))/(4*e*%pi*epsilon0*r0);      //energy(eV)
Ce=E/2;      //cohesive energy per atom(eV)
x=IE-Ea;     //energy(eV)
CE=Ce+(x/2);    //total cohesive energy per atom(eV)

//Result
printf('total cohesive energy per atom is %0.3f     eV   \n',(CE))
printf('answer varies due to ing off errors')
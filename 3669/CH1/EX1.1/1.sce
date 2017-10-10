
//Variable declaration
e=1.6*10**-19;   //charge of electron(c)
epsilon0=8.85*10**-12;    //permittivity(C/Nm)
r0=236*10**-12;     //seperation(m)
IE=5.14;     //ionisation energy of Na(eV)
Ea=-3.65;     //electron affinity(eV)

//Calculation
V=-e**2/(4*e*%pi*epsilon0*r0);     
BE=IE+Ea+(V);       //bond energy(eV)

//Result
printf('bond energy is %0.3f    eV    \n',(BE))
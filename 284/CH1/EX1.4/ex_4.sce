// Chapter 1_Principles of Quantum Mechanics
//Caption_Penetration depth of a particle impinging on a potential barrier
//Ex_4//page 18
v=10^5;            // Given velocity of electron
m=9.11*(10^-31);   // mass of electron
c=1.6*(10^-19)
E=((1/2)*m*(v^2))/c;
VO=2*E;    //Assume that the potential barrier at x=0 is twice as large as total energy of the incident particle
printf('Energy of the particle is %fd eV\n' ,E)
h=1.054*(10^-34)
d=((h^2)/(2*m*E*c))^(1/2)*10^10;
printf('The distance at which the wave funciton magnitude has decayed to e^-1 of its value at x=0 is %2.1f Angstrom \n',d )
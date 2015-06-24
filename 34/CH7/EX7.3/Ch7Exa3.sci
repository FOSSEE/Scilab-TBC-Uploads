 
n= 2; //for 2p state
Ao= 5.29*(10^(-11)); //Bohr's orbit for n=1, m
r= (n^2)*Ao; //orbital radius, m
f= 8.4*(10^14); //frequency of revolution, Hz ,using Eqn 4.4
Mo= 4*(%pi)*(10^(-7)); //Magnetic constant, T.m/A
e= 1.6*(10^(-19)); //charge of an electron, C
B= (Mo*f*e)/(2*r); //Magnetic field, T
Mb= 9.27*(10^(-24)); //Bohr Magneton, J/T
Um= Mb*B; //Magnetic energy, J
Um= Um/e; //converting to eV
disp(Um,"The magnetic energy for electron, in eV, is: ")
 
//Result
// The magnetic energy for electron, in eV, is:    
//   0.0000231
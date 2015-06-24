r= 5.3*(10^(-11)); //radius of atom, mts
Xo= 5.3*(10^(-11)); //uncertainty in position, mts
hb= 1.054*(10^(-34)); //Reduced planck Constant, J.s
p= hb/(2*Xo); //uncertainty in momentum, kg.m/s
m= 9.1*(10^(-31)); //mass, kg
KE= p^2/(2*m); // minimum kinetic energy, J
KE= KE/(1.6*(10^(-19))); //convert to eV
disp(KE,"The minimum possible kinetic energy for an electron in the atom (in eV) is : ")
 
 
//Result
// The minimum possible kinetic energy for an electron in the atom (in eV) is :    
//    3.3952997  
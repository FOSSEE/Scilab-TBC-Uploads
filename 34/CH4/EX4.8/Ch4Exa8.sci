 
I= 7.7; //Intensity of beam, MeV
Dgold= 1.93*(10^4); //density of gold foil used, kg/m^3
u= 1.66*(10^(-27)); //atomic mass unit, kg
Mgold= 197*u; //atomic mass of gold, per atom
n= Dgold/Mgold; //number of atoms per unit volume, atoms/m^3
Zgold= 79; //atomic number of gold
e= 1.6*(10^(-19)); //electronis charge, C
KE= (I*e)/(10^(-6)); //converting to J
angle= 45; //degree
p=cotd(angle/2);
Po= 8.85*(10^(-12)); //Permittivity of free space, F/m
t= 3*(10^(-7)); //thickness of foil, m

f= (%pi)*n*t*(((Zgold*(e^2))/(4*(%pi)*Po*KE))^2)*(p^2) //using Rutherford scattering formula
disp(f,"Fraction of the beam scattered through 45 degree or more, in percent, is: ")
 
//Result
// Fraction of the beam scattered through 45 degree or more, in percent, is:    
//   0.0000706  
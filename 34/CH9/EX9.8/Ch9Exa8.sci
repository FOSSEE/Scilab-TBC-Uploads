
u= 1.66*(10^(-27)); //atomic mass unit, kg
density= 8.94*10^(3); // kg/m^3
M= 63.5; //atomic mass of copper, u
Edensity= density/(M*u); //electron density, electrons/m^3
h= 6.63*(10^(-34)); //Planck's constant, J.s
Me= 9.1*(10^(-31)); //mass of electron, kg
Efermi= h^2/(2*Me)*[(3*Edensity)/(8*(%pi))]^(2/3); // J
disp(Efermi,"The fermi energy, in J, is: ")
 
//Result
//The fermi energy, in J, is:    
//    1.130D-18  
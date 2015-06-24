
n1= 3; //initial state
n2= 2; //final state
R= 1.097*(10^7); //Rydberg's constant, m^(-1)
k= (1/n2^2)-(1/n1^2);
l= 1/(k*R); //longest wavelength, m
l= l*(10^9); //converting to nm
 
disp(l,"The longest in Balmer series of Hydrogen, in nm, is: ")
 
//Result
// The longest in Balmer series of Hydrogen, in nm, is:    
//   656.33546 
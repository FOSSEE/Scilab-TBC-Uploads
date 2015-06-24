 
l= 0.180; //wavelength, nm
l= l* 10^(-9); //converting to m
c= 3*(10^8); //velocity of light, m/s
f= c/l; //frequency, Hz
R= 1.097*(10^7); //Rydberg's constant, per m
Z= 1+(sqrt((4*f)/(3*c*R))); //using Eqn 7.21
disp(Z,"The element has atomic number: ")
 
//Result
// The element has atomic number:    
//   26.985424  
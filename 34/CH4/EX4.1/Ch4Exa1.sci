 
E= -13.6; //Energy required to separate electron and proton, eV
e= 1.6*(10^(-19)); //charge of an electron, C
E= E*e; //converting to J
Po= 8.85*(10^(-12)); //Permittivity of free space, F/m
r= e^2/(8*(%pi)*Po*E); //radius, m
r= -r;
m= 9.1*(10^(-31)); //mass of electron, kg
v=e/sqrt(4*(%pi)*Po*m*r); //velocity, m/s

disp(r,"The orbital radius of the electron, in m, is: ")
disp(v,"The velocity of electron, in m/s, is: ")
 
 
//Result
//The orbital radius of the electron, in m, is:    
//    5.289D-11  

// The velocity of electron, in m/s, is:    
//   2186873.9 
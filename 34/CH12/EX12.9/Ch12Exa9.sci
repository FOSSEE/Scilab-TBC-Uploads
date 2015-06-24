//refer to Example 12.8

CrossSection= 2*(10^4); // capture cross section of Cadmium-113, b
CrossSection= CrossSection*(10^(-28)); // converting to m^2
n= (12/100)*(8.64*10^3)/(112*(1.66*10^(-27))); //number of atoms, atoms/m^3
Lambda= 1/(n*CrossSection); //mean free path, m
Lambda= Lambda*10^3; //converting to, mm
disp(Lambda,"The mean free path, in mm, is: ")

//Result
// The mean free path, in mm, is:    
//    0.0896605  
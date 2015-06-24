
a= 2*(10^(-12)); //de Broglie wavelength, mts
h= 4.136*(10^(-15)); //Planck's constant, eV.s
c= 3*(10^8); //velocity of light, m/s
pc= (h*c)/a; //p is momentum, pc is electron's energy, eV
pc= pc/1000; //convert to keV
Eo= 511; //rest energy, keV
E= sqrt((Eo^2)+(pc^2)); //Total Energy, keV
KE= E-Eo; //Kinetic energy, keV
disp(KE,"kinetic energy of the electron (in keV) is: ")

//Result
// kinetic energy of the electron (in keV) is:    
//    292.75193  

vg= c*(sqrt(1-(Eo^2/E^2))) //group velocity, m/s
vp= c^2/vg //phase velocity, m/s
disp(vg,"group velocity of the electron (in m/s) is: ")
disp(vp,"phase velocity of the electron (in m/s) is: ")

//Result
// group velocity of the electron (in m/s) is:    
//    2.316D+08

// phase velocity of the electron (in m/s) is:    
//    3.887D+08

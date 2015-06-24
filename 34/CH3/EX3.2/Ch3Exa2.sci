
a=10^(-15); //de Broglie wavelength, mts
Eo= 0.938; //proton rest energy, GeV
h= 4.136*(10^(-15)); //Planck's constant, eV.s
c= 2.998*(10^8); //velocity of light, m/s
p= h/a; // p is momentum, kg.m/s 
pc= (h*c)/a; //Photon's energy, ev
pc=pc*(10^(-9)); //convert to GeV
				//pc>E0, relativistic calculation
E= sqrt((Eo^2) + (pc^2)); //total energy, GeV
KE = E-Eo; //Kinetic energy, GeV
KE= KE*1000; // convert to MeV
disp(KE,"Kinetic Energy of the proton (in MeV) is: ")
 
 
//Result
// pc  =
//    1.2399728  

// Kinetic Energy of the proton (in MeV) is:    
//    616.79148  

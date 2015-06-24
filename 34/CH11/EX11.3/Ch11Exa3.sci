 
//Part (a)
//Caption: find energy difference between spin-up ad spin-down states
B= 1; //strength of magnetic field, T
Mneutron= 3.152*(10^(-8)); //Magnetic moment for neutron, eV/T
Mproton= 2.793*Mneutron; //Magnetic moment for proton, eV/T
dE= 2*Mproton*B; //eV
disp(dE,"The energy difference, in eV, is: ")
 
//Result
// The energy difference, in eV, is:    
//   0.0000002  
 
//Part (b)
//Caption: find Larmor frequency for a proton in the field
h= 4.13*(10^(-15)); //Planck's constant, eV.s
Flarmor= dE/h; //Hz
Flarmor= Flarmor/(10^6); //converting to MHz
disp(Flarmor,"The Larmor frequency for a proton in the field, in MHZ, is: ")
 
//Result
// The Larmor frequency for a proton in the field, in MHZ, is:    
//    42.632136

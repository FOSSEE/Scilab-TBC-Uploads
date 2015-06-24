t= 10^(-8); //time period between excitation and radiation, s
hb= 1.054*(10^(-34)); //Reduced Planck's constant, J.s
Eo= hb/(2*t); //uncertainty in photon energy, J
disp(Eo,"Photon energy is uncertain by (in J) :")
h=hb*(2*(%pi)); //Planck's constant
Fo= Eo/h; //uncertainty in frequency of light, Hz
disp(Fo,"Frquency of photon is uncertain by (in Hz) : ")

//Result
 
// Photon energy is uncertain by (in J) :   
//    5.270D-27  

// Frquency of photon is uncertain by (in Hz) :    
//    7957747.2  
 

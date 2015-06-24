r= 5*(10^(-15)); //radius of nucleus, mts
Xo= 5*(10^(-15)); //assumed initial uncertainty, mts
hb= 1.054*(10^(-34)); //reduced Planck's constant, J.s
p= hb/(2*Xo); //uncertainty in momentum, kg.m/s
disp(p,"Uncertainty in momentum of the electron is : ")

c= 3*(10^8); //velocity of light, m/s
KE= p*c; //minimum kinetic energy required, J
KE= KE/(1.6*(10^(-19))); //convert to eV
KE= KE/(10^6); //convert to MeV
disp(KE,"The minimum energy required (in MeV) is : ")
 
 
//Result
// Uncertainty in momentum of the electron is :    
//    1.054D-20  

// The minimum energy required (in MeV) is :    
//    19.7625  

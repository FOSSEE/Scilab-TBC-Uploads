 
c= 3*(10^8); //Velocity of light, m/s
me= 0.511/(c^2); //mass of electron, MeV
mp=0; //mass of proton, MeV
p= 2.000/c; //momenta for both particles, MeV
 
////Using Eq. 1.24 and 1.25, Page 31 
Ee=sqrt(((me^2)*(c^4))+((p^2)*(c^2))); //Total energy of electron, MeV
Ep= p*c; //Total energy of proton, MeV

disp(Ee,"Total energy of Electron, in Mev, is: ")
disp(Ep,"Total energy of Photon, in Mev, is: ")
 
//Results
 
// Total energy of Electron, in Mev, is:    
//   2.0642483  
 
// Total energy of Photon, in Mev, is:    
//    2.  
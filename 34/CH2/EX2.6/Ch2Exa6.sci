
//Example 2.6 (b)
 
c=3*10^8; //velocity of light, m/s
V= 0.5*c; //velocity of electron and positron, m/s
y= 1/sqrt(1-(V/c^2)); //gamma, for relativistic momentum
m=0.511/c^2; //MeV

K= 2*y*m*V; //difference in momentum of both photons
L= 2*y*m*c; //conservation of energy, sum of momentum of both photons

p1= (L+K)/2; //momentum of first photon, MeV
disp(p1*c ,"The momentum of forst photon, in MeV /c, is: ")
disp((1-p1*c) ,"The momentum of second photon, in MeV /c, is: ")
 
//Result
// The momentum of forst photon, in MeV /c, is:    
//    0.7665  
    
// The momentum of second photon, in MeV /c, is:    
//   0.2335  
 
//Part (a)
//Caption: find frequency of revolution of electrons

n1=1; //initial state
n2=2; //final state
E1= 2.18*(10^(-18)); //Rydberg's constant, J
h= 6.63*(10^(-34)); //Planck's constant, J.s
f1= (E1/h)*(2/n1^3); //Frequency for first orbit, rev/s
f2= (E1/h)*(2/n2^3); //Frequency for second orbit, rev/s
disp(f1,"Frequency of revolution for orbit n=1, in rev/s, is: ")
disp(f2,"Frequency of revolution for orbit n=2, in rev/s, is: ")

//Result
// Frequency of revolution for orbit n=1, in rev/s, is:
//   6.576D+15
 
// Frequency of revolution for orbit n=2, in rev/s, is:
// 8.220D+14
 
//Part (b)
//Caption: find frequency of emitted photon
 
n1=2; //initial orbit
n2=1; //final orbit
f= (E1/h)*((1/n2^2)-(1/n1^2)); //frequency, Hz
disp(f,"Frequency of emitted photon, in Hz, is: ")

//Result
// Frequency of emitted photon, in Hz, is:    
//    2.466D+15  
 
 
//Part (c)
//Caption: find number of revolutions an electron makes in given time
 
n= 2; //orbit
f= f2; //from part (a)
dt= 10^(-8); // time duration, s
N= f*dt; //Number of revolutions
disp(N,"Number of revolutions the electron makes is: ")
 
//Result
// Number of revolutions the electron makes is:    
//    8220211.2  
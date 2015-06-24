 
n= 2; //outer (2s) orbit of lithium
E2= -5.39; //Ionisation energy of lithium, for n=2 eV
E1= -13.6; //for n=1, eV
Z= n*(sqrt(E2/E1)) //modification factor for effective charge
e= 1.6*(10^(-19)); //charge of an electron, C
Ceffective = Z*e;
 
disp(Ceffective,"The effective charge, in C, is: ")
 
//Result
// The effective charge, in C, is:    
//   2.015D-19
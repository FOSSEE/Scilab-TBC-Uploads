 
Ft= 660; //frequency of tuning fork, Hz
Fo= 5.00*(10^14); //frquency of atomic oscillator, Hz
Ef= 0.04; //vibrational energy of tuning fork, J
h= 6.63*(10^(-34)); //Planck's constant, J.s
 
E1= h*Ft; //Total energy of tuning fork, J
E2= h*Fo; //Total energy of atomic oscillator, J
E2= E2/(1.60*(10^(-19))); //converting to eV

disp(E1,"Energy of tuning fork , in J, is: ")
 
disp(E2,"Energy of atomic oscillator, in J, is: ")
 
//Result

// Energy of tuning fork , in J, is:    
//    4.376D-31  
 

//Energy of atomic oscillator, in J, is:    
//    2.071875  
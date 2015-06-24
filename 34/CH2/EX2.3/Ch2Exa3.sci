 
AP= 50000; //Accelerating potential of the x-ray machine, V
l= (1.24*(10^(-6)))/AP*(10^(9));  //Minimum wavelength, nm
disp(l,"Minimum wavelength possible, in nm, is: ")
 
Fmax= 3*(10^8)/(l*(10^(-9)));  //Maximum frequency, Hz
disp(Fmax,"Maximum frequency possible, in Hz, is: ")
 
 
//Result
 
// Minimum wavelength possible, in nm, is:    
//     0.0248  
 
//  Maximum frequency possible, in Hz, is:    
//    1.210D+19  
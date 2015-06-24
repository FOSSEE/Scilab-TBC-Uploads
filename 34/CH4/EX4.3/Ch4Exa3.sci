 
//Part(a)
Rn= 10^(-5); //radius of Rydberg atom, m
Ao= 5.29*(10^(-11)); //Bohr radius, m
n= sqrt(Rn/Ao); //Quantum number

disp(n,"The quantum number of the Rydberg atom is: ")
 
//Result
//  The quantum number of the Rydberg atom is:    
//    434.78261  
 
//Part (b)
E1= -13.6; //Ground state energy level, eV
En= E1/n^2; //Nth state energy level, eV
disp(En,"The energy ofthe rydberg atom is: ")
 
//Result
// The energy ofthe rydberg atom is:    
// - 0.0000719  
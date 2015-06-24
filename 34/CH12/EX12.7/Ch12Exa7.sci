 
Npolonium= 84; //atomic number of polonium
Nalpha= 2; //atomic number of alpha particle
Z= Npolonium-Nalpha; //atomic number of daughter nuclide
Mpolonium= 209.9829; //mass number of polonium, u
Malpha= 4.0026; //mass number of alpha particle, u
A= Mpolonium-Malpha; //mass number of daughter nuclide
disp(Z,"The daughter nuclide has atomic number: ")
disp(A,"and mass number: ")
    
// The daughter nuclide has atomic number:    
//   82.  

// and mass number:    
//    205.9803.  
    
Ealpha= 5.3; //energy of alpha particle, MeV
Q= Mpolonium*Ealpha/A; //disintegration energy, MeV
Mq= Q/931; //mass equivalent for Q, u
Mnuclide= Mpolonium-Malpha-Mq; //u
disp(Mnuclide,"The atomic mass of the daughter nuclide is: ")
//Result
// The atomic mass of the daughter nuclide is:    
//   205.9745 
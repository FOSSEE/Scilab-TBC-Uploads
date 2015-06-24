 
Moxygen= 16.0; //atomic mass,u
Mo2= 32.0; //Molecular mass, u
u= 1.66*(10^(-27)); //atomic mass unit, kg
Moxygen= Mo2*u; //mass, kg
t= 273; //temperature, K
k= 1.38*10^(-23); //Boltzmann constant, J/K
Vrms= sqrt(3*k*t/Moxygen); // m/s
disp(Vrms,"The rms velocity of oxygen is: ")
 
//Result
// The rms velocity of oxygen is:    
//   461.26708  
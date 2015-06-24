 
n= 8.48*(10^28); //free electron density, m^(-3)
Vfermi= 1.57*(10^6); //Fermi Velocity, m/s
rho= 1.72*(10^(-8)); //resistivity, ohm
e= 1.6*(10^(-19)); //charge of an electron, C
Me= 9.1*(10^(-31)); //mass of electron, kg
lambda= Me*Vfermi/(n*(e^2)*rho); //m
lambda= lambda*(10^9); //converting to nm
disp(lambda,"The mean free path, in nm, is: ")
 
//Result
// The mean free path, in nm, is:    
//    38.262803  

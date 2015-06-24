 
l= 350; //Wavelength of UV light, nm
i= 1.00; //intensity of UV  light, W/m^2

//Part (a)

l= l*10^(-9); //converting to m
Ep= (1.24*(10^(-6)))/l; //energy of photon, using Eqn (2.11) on Page 66, e.V
t= 2.2; //work function of Potassium surface, eV
 
KEmax= Ep-t //Max KE of the phototelectrons, eV
disp(KEmax,"MAximum KE of photoelectrin, in eV, is: ")

//Part (b) 

A= 1.00; //Surface area, cm^2
A= A* 10^(-4); //converting to m^2
E= 5.68*(10^(-19)); //Photon energy, J
Np= i*A/E; //number of incident photon, per second
Ne= (0.0050)*Np; //number of photoeectrons emitted, per second

disp(Ne,"Rate of emission of photoelectrons, per second, is: ")

//Result
 
// Rate of emission of photoelectrons, per second, is:    
//    8.803D+11  

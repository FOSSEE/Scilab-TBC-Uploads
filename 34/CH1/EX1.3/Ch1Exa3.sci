
v= 6.12*(10^7); //receding velocity with respect to Earth, m/s
c= 3*(10^8); //velocity of light, m/s
L0= 500; //initial wavelength of spectral line, nm
L= L0*sqrt(((1+(v/c))/(1-(v/c)))); //final wavelength of spectral light, nm
Ls= L-L0; //shift in wavelength, nm
disp(Ls,"Shift in Green spectral line (in nm) is: ")
 
//Result
// Shift in Green spectral line (in nm) is:    
//    114.93146  
 

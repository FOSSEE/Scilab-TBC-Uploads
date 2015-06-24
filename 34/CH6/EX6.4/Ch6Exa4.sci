
B= 0.300; //magnetic field, T
Lambda= 450; //wavelength, nm
Lambda= Lambda*(10^(-9)); //converting to m
e= 1.6*(10^(-19)); //charge of an electron, C
Me= 9.1*(10^(-31)); //mass of electron, kg
c= 3 *(10^8); //speed of light, m/s
dLambda= e*B*(Lambda^2)/(4*(%pi)*Me*c); //m
dLambda= dLambda*(10^9); //converting to nm
disp(dLambda,"The separation between Zeeman components is: ")
//Result
// The separation between Zeeman components is:    
//    0.0028333  

//variable declaration
C=3*10**8                    //The speed of light
Lamda=6943                   //Wavelength
T=300                        //Temperature in Kelvin
h=6.626*10**-34              //Planck constant 
k=1.38*10**-23               //Boltzmann's constant

//Calculations

V=(C)/(Lamda*10**-10)       //Frequency
R=exp(h*V/(k*T))       //Relative population

//Result
printf('Frequency (V) = %0.3f  *10**14 Hz      \n',(V/10**14))
printf('Relative Population= %0.3f    *10**30    \n',(R/10**30))
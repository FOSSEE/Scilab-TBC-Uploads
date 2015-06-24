//variable initialization
e=1.6*10^-19;                                                                   //charge of electron (Coulomb)
B=0.5                                                                           //magnetic field (Tesla)
lembda=6438*10^-10;                                                             //wavelength of the line (m)
m=9.1*10^-31;                                                                   //mass of electron (kg)
c=3*10^8;                                                                       //speed of light (m/s)

//calculation
dlembda=(e*B*lembda^2*10^10)/(4*%pi*m*c);                                       //normal Zeeman splitting (Å)

printf("\nZeeman shift = %.3f Å",dlembda);

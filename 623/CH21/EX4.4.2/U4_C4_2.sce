//variable initialization
e=1.6*10^-19;                                                                   //charge of electron (Coulomb)
B=1                                                                             //magnetic field (Tesla)
lembda=612*10^-9;                                                               //wavelength of the line (m)
m=9.1*10^-31;                                                                   //mass of electron (kg)
c=3*10^8;                                                                       //speed of light (m/s)

//calculation
dlembda1=(e*B*lembda^2*10^10)/(4*%pi*m*c);                                      //normal Zeeman splitting (Å)
dlembda2=2*dlembda1;                                                            //Separation of outer lines (Å)

printf("\nSeparation of outer lines = %.2f Å",dlembda2);

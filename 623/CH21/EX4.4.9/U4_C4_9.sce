//variable initialization
m=9.1*10^-31;                                                                   //mass of electron (Kg)
h=1.054*10^-34;                                                                 //Plank's constant (Js)
B=5                                                                             //magnetic field (T)
lembda=1210                                                                     //wavelength of spectral line (Å)
M=[1 0 -1 1 0 -1];                                                              //value of Ml+2*Ms
ch=12400                                                                        //product of speed of light and Plank's constant (eV*Å)

//calculation
dE=(h/(2*m))*B*M;                                                               //value of dE(upper)-dE(lower) (eV)
dlembda=(lembda^2/ch)*dE;                                                       //wavelengths of the spectral lines in the pattern (Å)

printf("\nwavelengths of the line = %.0f+%.3f, %.0f+%.0f, %.0f%.3f Å",lembda,dlembda(1),lembda,dlembda(2),lembda,dlembda(3));

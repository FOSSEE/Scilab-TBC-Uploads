//variable initialization
ch=12.4                                                                         //product of speed of light and Plank's constant (KeV*Å)
lembda1=0.178                                                                   //wavelength of K-alpha line (Å)
lembda2=0.210                                                                   //wavelength of K line (Å)

//calculation
Ek=ch/lembda1;                                                                  //binding energy of K electron (KeV)
El=Ek-(ch/lembda2);                                                             //binding energy of K-alpha electron (KeV)
lembda=ch/El;                                                                  //wavelength of L absorption edge (Å)

printf("\nWavelength of L absorption edge = %.2f Å",lembda);

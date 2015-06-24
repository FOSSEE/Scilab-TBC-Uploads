//variable initialization
hc=12400                                                                        //value of product of plank's constant and speed of light (eV Å)
E1=3.18                                                                         //separation of 4s and 3s level (eV)
lembda=5890                                                                     //wavelength of the first member of principal series of sodium (Å)

//calculation
E2=hc/lembda;                                                                   //separation of 3s and 3p levels (eV)
deltaE=E1-E2;                                                                   //separation of 4s and 3p level (eV)
lembda1=hc/deltaE;                                                              //wavelength of the first member of sharp series (Å)

printf("\nλ = %.0f Å",lembda1);

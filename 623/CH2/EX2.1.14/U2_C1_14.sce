//variable initialization
lembda0=2536*10^-10;                                                            //wavelength of exciting line (meter)
lembda=2612*10^-10;                                                             //wavelength of Raman line (meter)

//Calculation of the Raman shift
v0=1/lembda0;                                                                   //wave number of exciting line (1/meter)
v=1/lembda;                                                                     //wave number of Raman line (1/meter)
shift=v0-v;                                                                     //the Raman shift (1/meter)

printf("\nThe Raman shift = %.0f m-1",shift);

//Note: Answer given in the book is an approximate answer

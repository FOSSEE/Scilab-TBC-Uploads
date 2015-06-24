//variable initialization
a=0.51                                                                          //Value of m0*c^2 (MeV)
b=0.0124                                                                        //Value of h*c (MeV Å)
lembda_X=0.1                                                                    //Short wavelength limit of continuous X-ray spectrum (Å)

//calculation of de Broglie wavelength of electron
lembda=lembda_X/(1+(2*a*lembda_X)/b)^(1/2);                                           //de Broglie wavelength of relativistic electrons

printf("de Broglie wavelength of relativistic electrons = %.3f Å",lembda);

//variable initialization
lembda0=5000*10^-10;                                                            //Wavelength of radiation (meter)
lembda=5050.5*10^-10;                                                           //Wavelength of Raman line (meter)

//(a) Raman frequency
v0=1/lembda0;                                                                   //Wave number of radiation (1/meter)
v=1/lembda;                                                                     //Wave number of Raman line (1/meter)
shift=v0-v;                                                                     //Raman shift (1/meter)
va=v0+shift;                                                                    //Frequency of antistoke's line (1/meter)

//(b) Position of the antistokes' line
lembdaa=10^10/va;                                                               //Wavelength of antistoke's line (Å)

printf("\n(a) Raman frequency = %.2e m-1\n(b) Wavelength of antistoke`s line = %.2f Å",va,lembdaa);

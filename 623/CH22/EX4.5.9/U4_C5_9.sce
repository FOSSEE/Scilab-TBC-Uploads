//variable initialization
ch=12.4                                                                         //product of speed of light and Plank's constant (KeV*Å)
lembdak=0.18                                                                    //wavelength of K absorption edge (Å)
lembda=0.1                                                                      //wavelength of incident photon (Å)

//calculation
Ek=ch/lembdak;                                                                  //binding energy of K electron (KeV)
E=ch/lembda;                                                                    //energy of incident photon (KeV)
K=E-Ek;                                                                         //maximum kinetic energy of ejected electron (KeV)

printf("\n KE = %.2f KeV",K);

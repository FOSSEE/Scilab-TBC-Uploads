//variable initialization
E=1                                                                             //Energy of photon (MeV)
eta=0.25                                                                        //Relative change in photon's wavelength

//Calculation of kinetic energy of electron
T=(E*eta)/(1+eta);                                                              //Kinetic energy of recoil electron (MeV)

printf("\nThe kinetic energy of recoil electron = %.1f MeV",T);

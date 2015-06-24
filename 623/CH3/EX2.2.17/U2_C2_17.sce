//variable initialization
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
delta_t=10^-12;                                                                 //time for which nucleus remains in excited state (second)

//calculation of uncertainty in the energy of the gamma ray photon emitted by the nucleus
delta_E=h/delta_t;                                                              //uncertainty in the energy of the gamma ray photon (joule)

printf("\nThe uncertainty in the energy of the gamma ray photon = %.3e joule",delta_E);

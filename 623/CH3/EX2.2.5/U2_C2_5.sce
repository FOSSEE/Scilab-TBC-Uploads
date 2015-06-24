//variable initialization
h=6.63*10^-34;                                                                  //planck's constant (joule-second)
m=9.1*10^-31;                                                                   //mass of electron (kg)
lembda=5896*10^-10;                                                             //wavelength of yellow spectral line of sodium (meter)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)

//calculation of kinetic energy of electron
T_j=h^2/(2*m*lembda^2);                                                         //kinetic energy of the electron (joule)
T_eV=T_j/e;                                                                     //kinetic energy of the electron (eV)

printf("\n kinetic energy of electron = %.2e joule = %.1e eV",T_j,T_eV);

//variable initialization
mu=8.37*10^-28;                                                                 //Reducec mass of hydrogen molecule (kg)
h=6.58*10^-16;                                                                  //Plank's constant (eV s)
E0=0.273                                                                        //Ground state vibrational energy of hydrogen molecule (eV)

//calculation of force constant of the molecule
k=mu*((2*E0)/h)^2;                                                              //force constant of hydrogen molecule (N/m)

printf("\n Force constant = %.0f N/m",k);

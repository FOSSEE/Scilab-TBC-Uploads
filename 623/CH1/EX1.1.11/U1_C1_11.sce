//Variable initialization
E=0.25                                                                          //Energy of photon (MeV)
Theta=(120*%pi)/180;                                                            //Scattering angle of photon (radian)
a=0.51                                                                          //Value of m0*c^2 (Mev)

//Calculation of energy of the photon
E_dash=E/(1+(E/a)*(1-cos(Theta)));                                              //Energy of the scattered photon (MeV)

printf("\nEnergy of the scattered photon = %.3f Mev",E_dash);

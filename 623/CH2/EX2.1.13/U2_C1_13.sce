//variable initialization
Theta=120                                                                       //Scattering angle of photon (degree)
T=0.45                                                                          //Kinetic energy of electron (MeV)
a=0.51                                                                          //Value of m0*c^2 (Mev)

//Calculation of the energy of the incident photon
E=0.5*T*(1+(1+(2*a)/(T*(sind(Theta/2))^2))^(1/2));                              //Energy of the incident photon (MeV)

printf("\nEnergy of the incident photon = %.2f Mev",E);

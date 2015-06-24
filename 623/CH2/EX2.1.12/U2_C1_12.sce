//variable initialization
p=1.02                                                                          //momentum of the photon (MeV/c)
p_dash=0.255                                                                    //momentum of the photon after scattering (MeV/c)
a=0.51                                                                          //Value of m0*c^2 (Mev)

//Calculation of the angle of the photon after scattering
Theta=2*asind(((0.5*a*(p-p_dash))/(p*p_dash))^(1/2));                           //Angle of the photon after scattering (degree)

printf("\nAngle of the photon after scattering = %.0f degree",Theta);

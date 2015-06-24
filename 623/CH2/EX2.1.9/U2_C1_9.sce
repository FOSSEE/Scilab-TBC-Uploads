//variable initialization
lembda_c=0.024                                                                  //Compton wavelength of electron (Å)
Theta=(45*%pi)/180;                                                             //Scattering angle (radian)

//Calculation of wavelength of incident photon
lembda=lembda_c*(1-cos(Theta));                                                 //Wavelength of incident photon (Å)

printf("\n(a) Wavelength of incident photon = %.4f Å\n(b) Photon lies in the gamma ray spectrum",lembda);

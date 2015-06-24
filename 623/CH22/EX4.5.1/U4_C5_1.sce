//variable initialization
ch=12400                                                                        //product of speed of light and Plank's constant (eV*Å)
lembda1=0.024;                                                                  //Compton wavelength of X-ray (Å)
lembda2=1                                                                       //wavelength of X-ray (Å)

//(i)
x1=ch/lembda1;                                                                  //minimum voltage across X-ray tube (V)

//(ii)
x2=ch/(lembda2*10^3);                                                           //minimum voltage across X-ray tube (kV)

//(iii)
x3=1.02                                                                         //minimum energy of X-ray photon (M*eV)

printf("\n(i) voltage = %.2e V\n(ii) voltage = %.1f KV\n(iii) energy = %.2f MeV",x1,x2,x3);

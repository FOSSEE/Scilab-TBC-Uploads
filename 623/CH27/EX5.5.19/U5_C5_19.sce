//variable initialization
vexc=4358*10^-10;                                                               //wavelength of exciting line (m)
vsto=4458*10^-10;                                                               //wavelength of Stokes line (m)

//calculation of wavelength of Anti-stokes line
vbar_exc=1/vexc;                                                                //wave number of exciting line (m-1)
vbar_sto=1/vsto;                                                                //wave number of Stokes line (m-1)
delta_vbar=vbar_exc-vbar_sto;                                                   //Raman shift (m-1)
vbar_antistoke=vbar_exc+delta_vbar;                                             //Wave number of Anti-Stokes line (m-1)
lembda_antistoke=(1/vbar_antistoke)*10^10;                                      //Wavelength of Anti-Stokes line (Å)

printf("\nwavelength of Anti-stokes line = %.1f Å",lembda_antistoke);

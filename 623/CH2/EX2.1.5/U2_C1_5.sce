//variable initialization
h=(6.625*10^-34)/(2*%pi);                                                       //Planck's constant (joule-second)
c=3*10^8;                                                                       //speed of light (meter/second)
lembda=2000;                                                                    //Wavelength of the light (Å)
phi=4.2                                                                         //work function of aluminium surface (eV)
ch=12400                                                                        //constant (eV Å)

//(a) maximum kinetic energy of photoelectrons
Tmax=(ch/lembda)-phi;                                                           //maximum kinetic energy of photoelectrons (eV)

//(b) minimum kinetic energy of photoelectrons
Tmin=0

//(c) cut-off wavelength
lembda_cut=ch/phi;                                                              // cut-off wavelength (Å)

//(d) stopping potential
v=2                                                                             //stopping potential (volt)

printf("\n(a) Maximum kinetic energy of photoelectrons = %.0f eV\n(b) Minimum kinetic energy of photoelectrons = %.0f\n(c) Cut-off wavelength = %.0f Å\n(d) Stopping potential = %.0f volt",Tmax,Tmin,lembda_cut,v);

//Note: In book answer of cut_off wavelength is wrong

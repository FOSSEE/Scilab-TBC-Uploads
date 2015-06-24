//variable initialization
lembda1=4000                                                                    //wavelength of light (Å)
V1=2                                                                            //stopping potential (volt)
lembda2=6000                                                                    //wavelength of light (Å)
V2=1                                                                            //stopping potential (volt)
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)
c=3*10^8;                                                                       //speed of light (meter/second)
ch=12400                                                                        //constant (eV Å)
//(i) Planck's constant
h=(e*(V1-V2)*lembda1*10^-10*lembda2*10^-10)/(c*((lembda2*10^-10)-(lembda1*10^-10)));  //Planck's constant (joule-second)

//(ii) Work function
phi=(ch/lembda1)-V1;                                                            //work function of the material (eV)

printf("\n(i) Planck`s constant = h = %.1e joule-second\n(ii) Work function of the material = %.1f eV",h,phi);

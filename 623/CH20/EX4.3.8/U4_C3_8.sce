//variable initialization
lembda1=5890*10^-10;                                                            //wavelength of doublet (Å)
lembda2=5896*10^-10;                                                            //wavelength of doublet (Å)
h=6.63*10^-34;                                                                  //Plank's constant (Js)
c=3*10^8;                                                                       //speed of light (m/s)
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)

//calculation
deltaV=(lembda2-lembda1)/(lembda1*lembda2);                                     //wave no. (m-1)
deltaE=(h*c*deltaV)/e;                                                          //separation of energy levels (eV)

printf("\nΔE = %.2e eV",deltaE);

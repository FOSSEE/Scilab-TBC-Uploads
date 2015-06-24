//variable initialization
ch=12400                                                                        //product of speed of light and Plank's constant (eV*Å)
Rch=13.6                                                                        //product of speed of light, Plank's constant and R (eV)
z=23                                                                            //atomic no. of vanadium
lembda=24                                                                       //wavelength of L absorption edge (Å)

//calculation
El=ch/(lembda*10^3);                                                            //binding energy of L electron (KeV)
Ek=((3/(4*10^3))*Rch*(z-1)^2)+El;                                               //binding energy of K electron (KeV)

printf("\nBinding energy of K-electron = %.2f KeV",Ek);

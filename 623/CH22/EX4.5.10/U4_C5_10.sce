//variable initialization
ch=12.4                                                                         //product of speed of light and Plank's constant (KeV*Å)
Rch=13.6/10^3;                                                                  //product of speed of light, Plank's constant and R (KeV)
lembdak=1.74                                                                    //K band absorption edge wavelength of iron (Å)
z=30;                                                                           //atomic no. of zinc

//calculation
Ek=ch/lembdak;                                                                  //binding energy of K electron in iron (KeV)
E=(3/4)*Rch*(z-1)^2;                                                            //energy of photon of K-alpha radiation (KeV)
K=E-Ek;                                                                         //kinetic energy of the photoelectrons liberated from iron (KeV)

printf("\n KE = %.3f KeV",K);

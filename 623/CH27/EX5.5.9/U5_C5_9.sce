//variable initialization
mu=1.61*10^-27;                                                                 //reduced mass of HCl molecule (kg)
c=3*10^8;                                                                       //speed of light (m/s)
lembda=3.465*10^-6;                                                             //wavelength of infrared radiation (m)

//calculation of force constant
v=c/lembda;                                                                     //frequency of radiation (s-1)
k=4*(%pi*v)^2*mu;                                                               //force constant of HCl molecule (N/m)

printf("\nforce constant = %.1f N/m",k);

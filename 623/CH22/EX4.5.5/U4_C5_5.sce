//variable initialization
z1=13                                                                           //atomic no. of Al
z2=27                                                                           //atomic no. of Co
R=1.097*10^7;                                                                   //(m-1)

//calculation
lembda1=(4*10^12)/(3*R*(z1-1)^2);                                               //wavelength of K line in Al (pm)
lembda2=(4*10^12)/(3*R*(z2-1)^2);                                               //wavelength of k line in Co (pm)

printf("\n wavelength of Al = %.0f pm\n wavelength of Co = %.0f pm",lembda1,lembda2);

//variable initialization
z1=29                                                                           //atomic no. of Copper
z2=26                                                                           //atomic no. of Iron
lembda1=193                                                                     //wavelength of K line in Iron (pm)

//calculation
lembda=((z2-1)/(z1-1))^2*lembda1;                                               //wavelength of K line in Copper (pm)

printf("\nλ = %.0f pm",lembda);

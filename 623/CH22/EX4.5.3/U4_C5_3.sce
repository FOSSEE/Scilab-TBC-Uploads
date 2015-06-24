//variable initialization
R=10972900                                                                      //(m-1)
lembda=1.54*10^-10;                                                             //wavelength of K line (m)

//calculation
z=1+sqrt(4/(3*lembda*R));                                                       //atomic number of the target element

printf("\nZ = %.0f",z);

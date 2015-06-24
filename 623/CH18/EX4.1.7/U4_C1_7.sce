//variable initialization
R=1.097*10^7;                                                                   //Rydberg constant (m-1)
lembda=59.3*10^-9;                                                              //wavelength difference b/w first lines of Balmer and Lyman series (m)

//calculation
z=sqrt(88/(15*R*lembda));                                                       //atomic no.

printf("\nZ = %.0f",z);

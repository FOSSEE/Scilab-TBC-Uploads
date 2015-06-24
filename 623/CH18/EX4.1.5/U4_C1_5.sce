//variable initialization
lembda1=108.5*10^-9;                                                            //wavelength (m)
lembda2=30.4*10^-9;                                                             //wavelength (m)
R=1.097*10^7;                                                                   //Rydberg constant (m-1)
z=2                                                                             //atomic no. of He
n0=1                                                                            //ground state

//calculation
n=sqrt(1/((1/n0^2)-(((1/lembda1)+(1/lembda2))/(R*z^2))));                       //quantum no. corresponding to the excited state of He+

printf("\nn = %.0f",n);

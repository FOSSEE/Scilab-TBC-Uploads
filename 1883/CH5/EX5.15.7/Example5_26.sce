//Chapter-5,Example5_15_7,pg 1-45

e=1.6*10^-19                                                        //charge of an electron

h=6.63*10^-34                                                       //Plancks constant

m=9.1*10^-31                                                        //mass of an electron

c=3*10^8                                                            //speed of light in air

//The energy eigen values are given by    E=(h^2*n^2)/(8*m*e*L^2) 

L=5*10^-10                                                          //width of potential well

//as electron makes a transittion from its n=2 to n=1 energy level

E1=(1*h^2)/(8*m*e*L^2)                                              //for n=1

E2=(4*h^2)/(8*m*e*L^2)                                              //for n=2

E=E2-E1                                                             //The energy of emitted photon

printf("\nThe energy of emitted photon is  E2-E1 = %.2f eV\n",E)

//The energy of photon in terms of wavelength is (h*c)/lam

wavelength=(h*c)/(E*e)

printf("\nThe wavelength of emitted photon is = %.9f m\n",wavelength)

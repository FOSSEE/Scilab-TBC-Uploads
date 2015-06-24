//variable initialization
m_e=9.1*10^-31;                                                                 //mass of electron (kg)
m=100*10^-3;                                                                    //mass of object (kg)
v=1000                                                                          //velocity of electron and object (meter/second)
h=6.63*10^-34;                                                                  //planck's constant (joule-second)
//(i) de Broglie wavelength of electron
lembda_e=h/(m_e*v);                                                             //de Broglie wavelength of electron

//(ii) de Broglie wavelength of object
lembda=h/(m*v);                                                                 //de Broglie wavelength of object

printf("\n(i) de Broglie wavelength of electron = %.3e meter\n(ii) de Broglie wavelength of object = %.2e meter\nOwing to extremely short wavelength of the object its wave behavior cannot be demonstrated.",lembda_e,lembda);

//Note: In the book the answer of part(ii) is wrong

//variable initialization
z=2                                                                             //atomic no. of He atom
h=1.054*10^-34;                                                                 //Planck's constant (joule second)
R=10967800;                                                                     //Rydberg constant (m-1)
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)
c=3*10^8;                                                                       //speed of light (m/s)

//calculation
E=1.5*%pi*h*c*R*z^2;                                                            //The energy of the emitted photon (J)
IE=2*%pi*h*c*R;                                                                 //Ionization energy of H atom (J)
KE=(E-IE)/e;                                                                    //Kinetic energy of the photoelectron (eV)

printf("\nKinetic energy of photoelectron = %.1f eV",KE);

//variable initialization
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
m=9.1*10^-31;                                                                   //mass of electron (kg)
x_uncer=1*10^-10;                                                               //uncertainty in the position of elctrons (meter)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)

//(i) uncertainty in the momentum of electron
p_uncer=h/x_uncer;                                                              //The uncertainty in the momentum of electron (kg m/s)

//(ii) kinetic energy of electron
T=p_uncer^2/(2*m*e);                                                            //kinetic energy of electron (eV)

printf("\n(i) The uncertainty in the momentum of electron = %.3e kg m/s\n(ii) Kinetic energy of electron = %.1f eV\n   The ionization potential of atoms is of this order and hence the uncertainty in momentum is consistence with the binding energy of electrons in atoms.",p_uncer,T);

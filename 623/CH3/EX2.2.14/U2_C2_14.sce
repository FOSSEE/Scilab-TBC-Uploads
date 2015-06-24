//variable initialization
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
x=10^-14;                                                                       //dimension of the nucleus (meter)
c=3*10^8;                                                                       //speed of light (meter/second)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)

//(i) Uncertainty in the momentum of electron
p_uncer=h/x;                                                                    //The uncertainty in the momentum of electron (kg m/s)

//(ii) kinetic energy of electron
T=(p_uncer*c)/(e*10^6);                                                         //kinetic energy of electron (MeV)

printf("\n(i) The uncertainty in the momentum of electron = %.3e kg m/s\n(ii) Kinetic energy of electron = %.0f MeV\n   Experiments show that energy of electrons in nuclear disintegration (beta decay) is very much less than %.0f MeV. Hence the uncertainty principle rules out the possibility of electrons being a nuclear constituent.",p_uncer,T,T);

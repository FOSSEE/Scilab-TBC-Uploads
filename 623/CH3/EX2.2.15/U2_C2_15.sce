//variable initialization
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
x=10^-14;                                                                       //dimension of the nucleus (meter)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)
m=1.67*10^-27;                                                                  //mass of proton (kg)

//(i) Uncertainty in the momentum of electron
p_uncer=h/x;                                                                    //The uncertainty in the momentum of electron (kg m/s)

//(ii) kinetic energy of proton
T=(p_uncer^2)/(2*m*e*10^6);                                                     //kinetic energy of proton (MeV)

printf("\n(i) The uncertainty in the momentum of electron = %.3e kg m/s\n(ii) Kinetic energy of proton = %.2f MeV\n   The binding energies of nuclei are of this order.",p_uncer,T);

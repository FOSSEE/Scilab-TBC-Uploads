//variable initialization
S1=0
L1=2
J1=2
g1=1
S2=1
L2=3
J2=4
g2=5/4
B=0.25                                                                          //magnetic field (T)
mu=5.79*10^-5;                                                                  //mass (eV/T)

//(i)
E1=4*g1*mu*B;                                                                   //total splitting (eV)

//(ii)
E2=8*g2*mu*B;                                                                   //total splitting (eV)

printf("\n(i) total splitting = %.2e eV\n(ii) total splitting = %.4e eV",E1,E2);

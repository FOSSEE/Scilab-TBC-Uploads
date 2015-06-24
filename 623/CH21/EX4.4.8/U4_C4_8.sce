//variable initialization
m=9.1*10^-31;                                                                   //mass of electron (Kg)
h=1.054*10^-34;                                                                 //Plank's constant (Js)
B=1.2                                                                           //magnetic field (mu*b/m^2)
gs=2                                                                            //for a pure spin system
J=0.5;                                                                          //for a pure spin system

//calculation
mub=h/(2*m);                                                                    //(eV/T)
deltaE=2*gs*mub*B*J;                                                            //energy difference b/w electrons(eV)

printf("\n ΔE = %.2e eV",deltaE);

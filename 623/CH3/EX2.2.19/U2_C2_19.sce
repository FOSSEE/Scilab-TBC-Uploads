//variable initialization
h=1.054*10^-34;                                                                 //planck's constant (joule-second)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)
m=9.1*10^-31;                                                                   //mass of electron (kg)
E0=8.8542*10^-12;                                                               //permittivity of free space (C^2/N*m^2)

//(i) radius of ground state of hydrogen atom
r=(4*%pi*E0*h^2)/(m*e^2);                                                       //radius of ground state of hydrogen atom (meter)

//(ii) Binding energy of electron in hydrogen atom in the ground state
E=(-0.5*m*e^4)/(4*%pi*E0*h)^2;                                                  //binding energy of electron in hydrogen atom in the ground state (joule)

printf("\n(i) Radius of ground state of hydrogen atom = %.3e meter\n(ii) Binding energy of electron in ground state of hydrogen atom = %.2e joule",r,E);

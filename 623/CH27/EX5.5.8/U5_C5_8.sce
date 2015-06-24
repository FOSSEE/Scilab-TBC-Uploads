//function for calculating the various vibrational energy levels of CO molecule
function[energy]=F(V)
    energy=((V+.5)*h*v)/e;
endfunction

//function for converting eV to cm-1
function[energy]=G(V)
    energy=((V+.5)*h*v*8065)/e;
endfunction

//variable initialization
m1=12;                                                                          //molar mass of C atom (amu)
m2=16;                                                                          //molar mass of O atom (amu)
u=1.68*10^-27;                                                                  //atomic mass unit (kg)
k=1870                                                                          //force constant of CO molecule (N/m)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
e=1.602*10^-19;                                                                 //charge of electron (Coulomb)

//calculation of energy levels
mu=((m1*m2)/(m1+m2))*u;                                                         //reduced mass of CO molecule (kg)
v=(1/(2*%pi))*sqrt(k/mu);                                                       //frequency of vibration of CO molecule (Hz)
e1=F(0);                                                                        //energy of 1st level of CO molecule (eV)
E1=G(0);                                                                        //energy of 1st level of CO molecule (cm-1)
e2=F(1);                                                                        //energy of 2nd level of CO molecule (eV)
E2=G(1);                                                                        //energy of 2nd level of CO molecule (cm-1)
e3=F(2);                                                                        //energy of 3rd level of CO molecule (eV)
E3=G(2);                                                                        //energy of 3rd level of CO molecule (cm-1)

printf("\nE = %.3f eV, %.3f eV, %.3f eV..........................\n  = %.1f cm-1, %.1f cm-1, %.1f cm-1.................",e1,e2,e3,E1,E2,E3);

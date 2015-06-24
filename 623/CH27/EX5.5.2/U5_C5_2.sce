//function for calculating the energy level
function[energy]=F(j)
    energy=a*j*(j+1);
endfunction

//variable initialization
m=1.6738*10^-27;                                                                //mass of hydrogen atom (kg)
r=0.74*10^-10;                                                                  //intermolecular distance of hydrogen molecule (meter)
h=1.054*10^-34;                                                                 //Planck's constant (joule second)
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)

//calculation of rotational energy levels
mu=m/2;                                                                         //reduced mass of hydrogen atom (kg)
I=mu*r^2;                                                                       //moment of inertia of molecule (kg meter^2)
a=h^2/(2*I*e);                                                                  //constant (eV)
E0=F(0);                                                                        //energy of level 0 (eV)
E1=F(1);                                                                        //energy of level 1 (eV)
E2=F(2);                                                                        //energy of level 2 (eV)
E3=F(3);                                                                        //energy of level 3 (eV)

printf("\nE0 = %.0f\nE1 = %.2e eV\nE2 = %.2e eV\nE3 = %.2e eV",E0,E1,E2,E3);

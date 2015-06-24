//variable initialization
z=1                                                                             //atomic no. of H atom
m=1.68*10^-27;                                                                  //mass of H atom (kg)
h=1.054*10^-34;                                                                 //Planck's constant (joule second)
R=10967800;                                                                     //Rydberg constant (m-1)
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)
c=3*10^8;                                                                       //speed of light (m/s)

//(i) recoil velocity
v=(3*%pi*h*R*z^2)/(2*m);                                                        //recoil velocity of H atom (m/s)

//(ii) recoil kinetic energy
Er=(9/8)*((%pi*h*R*z^2)^2/(m*e));                                               //recoil kinetic energy of H atom (eV)

//(iii) energy of emitted photon
E=(1.5*%pi*h*c*R*z^2)/e;                                                        //energy of emitted photon (eV)

printf("\n(i) recoil velocity = %.2f m/s\n(ii) recoil kinetic energy = %.1e eV\n(iii) energy of emitted photon = %.2f eV",v,Er,E);

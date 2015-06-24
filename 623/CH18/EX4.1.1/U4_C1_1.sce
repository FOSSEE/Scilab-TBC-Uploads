//variable initialization
z=2                                                                             //atomic no. of He
a0=0.529                                                                        //radius of first Bohr orbit of H atom (Å)
n=1                                                                             //no. of Bohr orbit
A=2.19*10^6;                                                                    //velocity of e in first Bohr orbit of H atom (m/s)
B=4.14*10^15;                                                                   //orbital frequency in the first Bohr orbit of H atom (rad/s)
E0=13.6                                                                         //energy of electron in ground state of H atom (eV)
n1=1;
n2=2;
R=1.097*10^7;                                                                   //Rydberg constant (m-1)

//(i) radius of first Bohr orbit
r=a0/2;                                                                         //radius of first Bohr  orbit (Å)

//(ii) velocity of electron in the first orbit
v=A*(z/n);                                                                      //velocity of electron in the first orbit (m/s)

//(iii) orbital frequency in the first orbit
omega=B*(z^2/n^3);                                                              //orbital frequency in the first orbit (rad/s)

//(iv) kinetic and binding energy
KE=E0*(z^2/n^2);                                                                //kinetic energy of electron in the ground state (eV)
BE=KE;                                                                          //binding energy of electron in the ground state (eV)

//(v) ionization potential and first excitation potential
IP=KE;                                                                          //ionization potential (eV)
EE=E0*z^2*((1/n1^2)-(1/n2^2));                                                  //first excitation potential (eV)

//(vi) wavelength of the resonance line emitted in the transition n=2 to n=1
lembda=(1/(R*z^2*((1/n1^2)-(1/n2^2))))*10^10;                                   //wavelength of the resonance line emitted in the transition n=2 to n=1 (Å)

printf("\n(i) radius = %.3f Å\n(ii) velocity = %.2e m/s\n(iii) orbital frequency = %.3e rad/s\n(iv) KE = %.2f eV    BE = %.2f eV\n(v) IP = %.2f eV    EE = %.2f eV\n(vi) wavelength = %.1f Å",r,v,omega,KE,BE,IP,EE,lembda);

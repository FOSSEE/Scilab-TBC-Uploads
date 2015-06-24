//variable initialization
mu=9.27*10^-24;                                                                 //(J/T)
g=2;
ms=1/2;
dB=2*10^2;                                                                      //gradient of magnetic field (T/m)
m=1.67*10^-27;                                                                  //maas of hydrogen atom (kg)
l=0.2;                                                                          //distance travelled by hydrogen atom (m)
v=2*10^5;                                                                       //speed of hydrogen atom (m/s)

//calculation
muz=g*mu*ms;                                                                    //Resolved part of magnetic moment in the direction of magnetic field (J/T)
Fz=muz*dB;                                                                      //Force on the atom (N)
z=0.5*(Fz/m)*(l/v)^2;                                                           //Displacement of beam (m)
sep=2*z;                                                                        //Total separation (m)

printf("\n Total separation = %.2e m",sep);

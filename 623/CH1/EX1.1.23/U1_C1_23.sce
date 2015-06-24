//variable initialization
RestEnergy=0.51                            //energy of electron if the electron is at rest (Mev)
KineticEnergy=2                            //kinetic energy of electron (Bev)
c=3*10^8;                                  //speed of light (meter/second)

//calculation of momentum of electron
p=(KineticEnergy*10^9)/c;                         //momentum of electron neglecting rest energy relative to kinetic energy (Bev*second/meter)

printf("\n\tThe momentum of the electron = %.2f ev*second/meter",p);

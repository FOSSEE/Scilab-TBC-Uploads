//variable initialization
RestEnergy=0.51                                   //rest energy of electron (Mev)
T=1                                               //potential difference i.e. kinetic energy (Mev)
c=3*10^8;                                         //speed of light (meter/second)

//calculation of speed of electron
Beta=(1-(RestEnergy/(T+RestEnergy))^2)^(1/2);     //calculation of Beta
v=Beta*c;                                         //speed of electron (meter/second)

printf("\n\tThe speed of the electron = %.2e meter/second",v);

//Note: In the book answer of Beta is slightly wrong

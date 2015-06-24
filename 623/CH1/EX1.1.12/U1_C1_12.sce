//variable initialization
deltaTow=1*10^(-6);                          //mean proper lifetime of particle (second)
Beta=0.9                                     //value of Beta
v=2.7*10^8;                                  //velocity of particle (meter/second)

//part(i):lifetime of the particle in the laboratory frame
deltaT=deltaTow/((1-Beta^2)^(1/2));          //lifetime of the particle in the laboratory frame (second)

//part(ii):distance traversed by the particle in the laboratory frame
d=v*deltaT;                                  //distance traversed by the particle in the laboratory before disintegration (meter)

printf("\nIn laboratory frame:\n\t lifetime of the particle = %.2e second\n\t distance traversed by the particle = %.1e meter",deltaT,d);

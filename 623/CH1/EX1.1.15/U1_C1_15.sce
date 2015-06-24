//variable initialization
m0=1                                    //let rest mass of particle to be 1 (kg)
m=3*m0;                                 //moving mass of particle (kg)
c=3*10^8;                               //speed of light (meter/second)

//calculation of speed of particle
Beta=(1-(m0/m)^2)^(1/2);                //Calculation fo Beta
v=Beta*c;                               //speed of particle (meter/second)

printf("\n\tThe speed of The particle = %.2e meter/second",v);

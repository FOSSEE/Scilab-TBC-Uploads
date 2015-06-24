//variable initialization
n=0.01                            //fractional increase in momentum
c=3*10^8;                         //speed of light (meter/second)

//calculation of velocity of particle
Beta=(n*(2-n))^(1/2);             //calculation of Beta
v=Beta*c;                         //velocity of particle (meter/second)

printf("\nBeta = %.1e\nThe velocity of the particle = %.2e meter/second",Beta,v);

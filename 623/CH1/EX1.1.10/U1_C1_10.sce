//variable initialization
c=3*10^8;                                  //speed of light (meter/second)

//calculation of velocity of the reference frame s'
Beta=(1-((1/1.25)^2))^(1/2);                 //calculating Beta (1.25 comes from the fact that in frame s' density of bloc is 25% greater than frame s)
v=Beta*c;                                    //velocity of the reference frame s'

printf("\nBeta = %.1e\nThe velocity of the frame s` = %.1e meter/second",Beta,v);

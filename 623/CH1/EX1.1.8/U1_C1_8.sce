//variable initialization
IbyI_not=.99                       //ratio of moving length and rest length
c=3*10^8;                          //speed of light (meter/second)

//calculation of velocity of rocket ship
Beta=(1-IbyI_not^2)^(1/2);         //calculating value of Beta
v=Beta*c;                          //velocity of rocket ship (meter/second)

printf("\nThe velocity of the rocket ship = %.2e meter/second",v);

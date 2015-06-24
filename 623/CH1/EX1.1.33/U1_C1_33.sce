//variable initialization
c=3*10^8;                                      //Speed of sound (meter/second)
M=1.97*10^30;                                  //Mass of sun (kg)
R=1.5*10^11;                                   //Mean radius of the earth orbit (meter)
sigma=1.4*10^3;                                //Solar energy received by the earth (joule/meter^2*second)

//calculation of the fractional loss of mass of the sun per second
loss=(4*%pi*R^2*sigma)/(M*c^2);                //Fractional loss of mass of the sun per second

printf("\nThe fractional loss of mass of the sun per second = %.0e",loss);

//variable initialization
c=3*10^8;                                                          //speed of light(meter/second)
v1=0.6*c;                                                         //initial velocity of particle (meter/second)
v2=0.8*c;                                                         //final velocity of particle (meter/second)

//Calculation of work required to increase the velocity from v1 to v2:

//Classically
W_Classic=0.5*((v2/c)^2-(v1/c)^2);                                //ratio of work and m0*c^2 (mo is the rest mass of particle and c is the speed of light)

//Relativistically
W_Relative=(1/(1-(v2/c)^2)^(1/2))-(1/(1-(v1/c)^2)^(1/2));         //ratio of work and m0*c^2 (mo is the rest mass of particle and c is the speed of light)

printf("\nWork required:\n\t Classically: Work = %.2f*m0*c^2\n\t Relativistically: Work = %.3f*m0*c^2\nWhere m0:rest mass of particle & c:speed of light",W_Classic,W_Relative);

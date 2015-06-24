//variable initialization
h=6.62*10^-34;                                                                  //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)
x=62.4*100;                                                                     //(m-1)
y=41.6*100;                                                                     //(m-1)

//calculation of the moment of inertia of HCl molecule
B=y/4;                                                                          //Rotational constant of HCl (m-1)
I=h/(8*%pi^2*B*c);                                                              //Moment of inertia (kg m^2)

printf("\n I = %.1e kg m^2",I);

//variable initialization
mu=1.62*10^-27;                                                                 //reduced mass of HCl molecule (kg)
r=1.293*10^-10;                                                                 //internuclear distance (m)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)

//Calculation of separation between lines R(0) and P(1) of the fundamental band of HCl 35
I=mu*r^2;                                                                       //moment of inertia of molecule (kg m^2)
B=h/(8*%pi^2*I*c);                                                              //Rotational constant (m-1)
sep=4*B;                                                                        //separation b/w lines R(0) and P(1) (m-1)

printf("\nΔν = %.0f m-1",sep);

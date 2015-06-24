//variable initialization
k=448                                                                           //force constant of CH molecule (N/m)
mu=4.002*10^-27;                                                                //reduced mass of CH molecule (kg)
r=0.112*10^-9;                                                                  //internuclear distance (m)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)

//Calculation of peak frequencies
v0=(1/(2*%pi))*sqrt(k/mu);                                                      //central frequency (s-1)
I=mu*r^2;                                                                       //moment of inertia of molecule (kg m^2)
x=h/(4*%pi^2*I);                                                                //additional frequency (s-1)
v1=v0+x;                                                                        //peak frequency (Hz)
v2=v0-x;                                                                        //peak frequency (Hz)

printf("\n Peak frequencies = %.3e Hz, %.3e Hz",v1,v2);

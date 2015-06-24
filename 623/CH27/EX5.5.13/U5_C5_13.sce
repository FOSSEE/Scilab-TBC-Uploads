//variable initialization
v1=8.657*10^13;                                                                 //frequency of rotation absorption spectrum (Hz)
v2=8.483*10^13;                                                                 //frequency of rotation absorption spectrum (Hz)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
mu=1.544*10^-27;                                                                //Recuced mass of CH molecule (kg)

//(i) equilibrium separation
I=h/(2*%pi^2*(v1-v2));                                                          //Moment of inertia (kg m^2)
r=sqrt(I/mu);                                                                   //equilibrium internuclear distance (m)

//(ii) force constant of molecule
v0=(v1+v2)/2;                                                                   //Central frequency (Hz)
k=4*mu*(%pi*v0)^2;                                                              //Force constant of CH molecule (N/m)

printf("\n (i) equilibrium separation = %.2e meter\n (ii) force constant = %.0f N/m",r,k);

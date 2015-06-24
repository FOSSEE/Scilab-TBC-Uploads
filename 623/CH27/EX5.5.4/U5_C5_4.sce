//variable initialization
h=6.63*10^-34;                                                                  //Plank's constant (joule second)
v=1.153*10^11;                                                                  //Frequency of absorption line (Hz)
mu=11.38*10^-27;                                                                //Recuced mass of the molecule (kg)

//Calculation of the internuclear distance
I=h/(4*%pi^2*v);                                                                //moment of inertia of CO molecule (kg m^2)
r=sqrt(I/mu)*10^10;                                                             //Internuclear distance (Å)

printf("\n Internuclear distance = %.2f Å",r);

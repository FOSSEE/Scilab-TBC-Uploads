//variable initialization
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
mu=1.62*10^-27;                                                                 //reduced mass of HCl molecule (kg)
c=3*10^8;                                                                       //speed of light (m/s)
v=2.886*10^5;                                                                   //wave no. of absorption line in infrared spectrum (m-1)

//calculation of amplitude of vibration
k=4*(%pi*c*v)^2*mu;                                                             //force constant of HCl molecule (N/m)
amp=sqrt((h*c*v)/k)*10^10;                                                      //amplitude of vibration in the ground state (Å)

printf("\namplitude of vibration = %.2f Å",amp);

//variable initialization
m1=1;                                                                           //molar mass of H atom (amu)
m2=35;                                                                          //molar mass of Cl atom (amu)
u=1.68*10^-27;                                                                  //atomic mass unit (kg)
v=2885.9*100;                                                                   //wave no. of line (m-1)
c=3*10^8;                                                                       //Velocity of light (m/s)

//calculation of force constant
mu=((m1*m2)/(m1+m2))*u;                                                         //reduced mass of HCl molecule (kg)
k=4*(%pi*c*v)^2*mu;                                                             //force constant of HCl molecule (N/m)

printf("\n force constant = %.2f N/m",k);

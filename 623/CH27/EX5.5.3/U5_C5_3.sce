//variable initialization
u=1.68*10^-27;                                                                  //mass of hydrogen atom (kg)
m1=16;                                                                          //mass of oxygen atom in terms u
m2=1;                                                                           //mass of hydrogen atom in terms of u
I=1.48*10^-47;                                                                  //moment of inertia of OH-radical (kg m^2)
h_bar=1.054*10^-34;                                                             //Planck's constant (joule second)
j=5;                                                                            //energy level of OH-radical
c=3*10^8;                                                                       //speed of light (meter/second)
h=6.626*10^-34;                                                                 //Plank's constant (joule second)

//(a) internuclear distance
mu=((m1*m2)/(m1+m2))*u;                                                         //reduced mass of the molecule (kg)
r=(sqrt(I/mu))*10^10;                                                           //internuclear distance of molecule (Å)

//(b) angular momentum
P=h_bar*sqrt(j*(j+1));                                                          //angular momentum of molecule (joule second)

//(c) angular velocity
omega=P/I;                                                                      //angular velocity of molecule (radian/second)

//(d) wave number
B=h/(8*%pi^2*I*c);                                                              //rotational constant (m-1)
no=2*B*(j+1);                                                                   //wave no. of line corresponding to transition j=5 to j=6 (m-1)

//(e) energy absorbed
E=c*h*no;                                                                       //energy absorbed in the transition j=6 to j=5 (joule)

printf("\n(a) r = %.3f Å\n(b) J = %.2e joule second\n(c) ω = %.2e radian/second\n(d) wave number = %.2e m-1\n(e) E = %.1e joule",r,P,omega,no,E);

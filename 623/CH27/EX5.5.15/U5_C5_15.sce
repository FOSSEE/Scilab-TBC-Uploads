//variable initialization
v1=2174.07                                                                      //peak wave number (cm-1)
v2=2166.35                                                                      //peak wave number (cm-1)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)
mu=1.145*10^-26;                                                                //Reduced mass of CO molecule (kg)

//(a) central frequency
B=(v1-v2)/4;                                                                    //Rotational constant (cm-1)
v0=(v1+v2)/2;                                                                   //Central frequency (cm-1)

//(b) internuclear distance
I=h/(8*%pi^2*B*100*c);                                                          //moment of inertia of molecule (kg m^2)
r=sqrt(I/mu)*10^10;                                                             //equilibrium internuclear distance (Å)

//(c) force constant
k=4*mu*(%pi*c*v0*100)^2;                                                            //force constant (N/m)

printf("\n(a) central frequency = %.2f cm-1\n(b) internuclear distance = %.2f Å\n(c) force constant = %.0f N/m",v0,r,k);

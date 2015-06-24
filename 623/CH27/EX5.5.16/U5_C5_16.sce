//variable initialization
mu=3.142*10^-27;                                                                //reduced mass of the molecule (kg)
r=1.288*10^-10;                                                                 //internuclear distance (m)
h=6.6*10^-34;                                                                   //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)
v0=201100                                                                       //central frequency (m-1)

//Calculation
I=mu*r^2;                                                                       //moment of inertia of molecule (kg m^2)
B=h/(8*%pi^2*I*c);                                                              //Rotational constant (m-1)
vR0=v0+(2*B);                                                                   //wave no. of 1st line of R-branch (m-1)
vR1=v0+(4*B);                                                                   //wave no. of 2nd line of R-branch (m-1)
vP1=v0-(2*B);                                                                   //wave no. of 1st line of P-branch (m-1)
vP2=v0-(4*B);                                                                   //wave no. of 2nd line of P-branch (m-1)

printf("\n V_R(0) = %.0f m-1\n V_R(1) = %.0f m-1\n V_P(1) = %.0f m-1\n V_P(2) = %.0f m-1",vR0,vR1,vP1,vP2);

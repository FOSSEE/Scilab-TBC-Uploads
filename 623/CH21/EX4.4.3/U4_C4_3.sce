//variable initialization
mu=9.27*10^-24;                                                                 //(J/T)
B=1*10^-1;                                                                      //external magnetic field (T)
h=1.054*10^-34;                                                                 //Plank's constant (Js)
J=3/2;
L=1;
S=1/2;

//calculation
g=1+(((J*(J+1))+(S*(S+1))-(L*(L+1)))/(2*J*(J+1)));                              //Lande g-factor
omega=(g*mu*B)/h;                                                               //angular velocity of precession (rad/s)

printf("\nω = %.1e rad/sec",omega);

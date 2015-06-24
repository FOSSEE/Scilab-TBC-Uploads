//variable initialization
e=1.6*10^-19;                                                                   //charge of electron (C)
m=9.1*10^-31;                                                                   //mass of electron (kg)
B=0.1                                                                           //external magnetic field (Wb/m^2)
g=4/3
mu=9.27*10^-24;                                                                 //(J/T)

//calculation
E=g*mu*B;                                                                       //The spacing of adjacent sub-levels (J)
v=(e*B)/(4*%pi*m);                                                              //Larmor frequency (Hz)

printf("\n The spacing of adjacent sub-levels = %e J\n Larmor frequency = %.1e Hz",E,v);

clc;
clear;

printf("\n Example 9.8\n");

l=5;//Length of the channel of uranium reactor
Q=.25e6; //Heat release from uranium reactor
k=33; //Thermal conductivity of the uranium
Q_m=Q/l; //Heat release rate
//Thus, from equation 9.52:
dT=Q_m/(4*%pi*k);
printf("\nThe temperature difference between the surface and the centre of the uranium element = %.0f deg K",dT);
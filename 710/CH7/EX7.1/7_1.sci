clc();
clear;
//To calculate the kinetic energy and speed of the electron
e=1.6*10^-19;                             //charge of the electron
V=18;                                     //potential difference in kV
K=e*V*10^3                                //Kinetic energy in J
m=9.1*10^-31;                             //mass of the electron
v=sqrt((2*e*V*10^3)/m)*10^-7              //speed of electron in m/s
printf("The kinetic energy of electron is %e J and speed of the electron is %f m/s",K,v);
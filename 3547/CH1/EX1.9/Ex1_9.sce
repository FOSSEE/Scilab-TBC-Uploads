//To find length of the medium
//Example no 1.9
//Page no. 30

clc;
clear all;
bandwidth=100*10^9;                            //Bandwidth of optical signal
w=2*%pi*bandwidth;                             //Bandwidth of optical signal in rad/s
T=3.14*10^(-12);                               //Delay between minimum and maximum frequency component
beta2=10*(10^(-12))^2/10^3;                             //Group velocity dispersion parameter in s^2/km
L=T/(beta2*w);                                 //Length of the medium

// Displaying the result in command window
printf('\n Length of the medium = %0.0f m',L);


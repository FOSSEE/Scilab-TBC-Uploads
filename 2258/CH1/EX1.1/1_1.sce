clc();
clear;
// To calculate the de Broglie wavelength
c=3*10^8;   //velocity of light in m/s
v=c/10;   //velocity of proton in m/s
m=1.67*10^(-27);    //mass of proton in kg
h=6.626*10^(-34);
lamda=h/(m*v);   //de Broglie wavelength
printf("The de Broglie wavelength in metres is");
disp(lamda);

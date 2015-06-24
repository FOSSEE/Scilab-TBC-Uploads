// Example 7.10.4  page 7.54

clc;
clear;

h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.602d-19;  //charge of electron
eta=70/100; //quantum efficiency
P0=0.5d-6;  //incident optical power
Ip=4d-6;   //avalanche gain
E=1.5d-19;

lamda=h*c/(E);   //computing wavelength
R= eta*q*lamda/(h*c);   //computing responsivity
P0=Ip/R;    //computing optical power

lamda=lamda*10^6;
P0=P0*10^6;
printf("\nWavelength is %.3f micrometer.\nResponsivity is %.4f A/W.\nOptical power is %.2f microWatt.",lamda,R,P0);

//answer of optical power in the book is 5.53 microWatt, deviation of 0.17 microWatt.



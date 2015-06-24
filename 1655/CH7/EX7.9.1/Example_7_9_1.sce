// Example 7.9.1  page 7.45

clc;
clear;

lamda=1.4d-6;
h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
eta=65/100; //quantum efficiency
I=10d-9;    //current

NEP= h*c*sqrt(2*q*I)/(eta*q*lamda);
D=NEP^-1;

printf("\nNoise equivalent power is %.3e W.\nSpecific directivity is %.2e.",NEP,D);

//answers in the book for NEP is 7.683*10^-14, deviation of 0.04*10^-14.
//answers in the book for D is 13.01 *10^12, deviation of 0.11*10^12.

clc();
clear;
// To calculate the spacing of the crystal
V=344;   //accelerated voltage in V
n=1;    //first reflection
theta=60;   //glancing angle in degrees
lamda=12.27/sqrt(V);
d=(n*lamda)/(2*sind(theta));
printf("The spacing of the crystal is %f Angstrom",d);

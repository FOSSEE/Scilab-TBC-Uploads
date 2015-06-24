clc();
clear;
//To determine the magnetic field
m=9.1*10^-31;                     //mass of electron
v=3*10^7;                         //speed of electron
R=0.05;                           //radius of the circle
q=1.6*10^-31;
B=((m*v)/(q*R))*10^-9             // magnetic field
printf("The magnetic field to bend a beam is %f mT",B);
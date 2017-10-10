//Find the number of ampere turns

clc;
clear;

l=30*(10^-2); // Length of an iron path
lag=2*(10^-3);//Length of air gap
B=0.8; // Flux density
H=700;
m0=(4*%pi)*(10^-7);
mr=B/(m0*H);

A=poly(0,'A');//Area of the iron path

R1=l/(m0*mr*A);
R2=lag/(m0*A);
R=R1+R2;

phi=B*A;//Flux

NI=phi*R;

//To find numerical value
y=NI-A;

NI=roots(y(2));

//The answer in the textbook contains Round off error
printf('The number of turns necessary to produce a flux density of 0.8T in the air gap = %g AT\n',NI)

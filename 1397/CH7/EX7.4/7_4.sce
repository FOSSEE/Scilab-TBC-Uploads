//clc();
clear;
//To determine the ratio of stimulated emission rate to spontaneous emission 
lambda=0.5*10^-9;         //wavelength in nm
h=6.626*10^-34;           //plank constant in Js
T=1000;                   //temperature in K
Kb=1.381*10^-23;          //boltzmann constant in J/K
c=3*10^8;
new=c/lambda;
disp(new);
A=(h*new)/(Kb*T);
disp(A);
X=1/(exp(A)-1);
printf("ratio is");
disp(X);

//answer in book is wrong

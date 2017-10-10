//Example number 11.4, Page number 247

clc;clear;
close;

//Variable declaration
c=2.998*10**8;     //velocity of light(m/s)
Kb=1.381*10**-23;    //boltzmann constant(J/K)
T=1000;    //temperature(K)
h=6.626*10**-34;    //plank's constant(Js)
lamda=0.5*10**-6;   //wavelength(m)
//Calculation
v=c/lamda;    //frequency(Hz)
BA=1/(exp(h*v/(Kb*T))-1);      //ratio of emission
//Result
printf("ratio of emission is %.1e",BA)
//answer varies due to rounding off errors

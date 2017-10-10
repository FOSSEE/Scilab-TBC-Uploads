// Exa 10.3
// To calculate gain of antenna.

clc;
clear all;

Pin=12;  //Input power in watts
Ploss=3;  //resistive losses in Watts
D=5;  //Directivity

//solution
Eff=(Pin-Ploss)/Pin;
G=Eff*D;
printf('Gain of the antenna is %.2f dB = %.2f \n',10*log10(G),G);

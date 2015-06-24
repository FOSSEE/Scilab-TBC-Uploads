clc();
clear;
// To calculate the energies of electron
n2=2;    //second quantum state
n4=4;    //fourth quantum state
h=6.626*10^-34;
m=9.1*10^-31;   //mass in kg
a=2;   //potential box length in armstrong
a=a*10^-10;    //length in m
A=n2^2*h^2;
B=8*m*a^2;
E2=A/B;    //energy in j
E2eV=E2/(1.6*10^-19);    //energy in eV
C=n4^2*h^2;
E4=C/B;    //energy in j
E4eV=E4/(1.6*10^-19);    //energy in eV
printf("energy corresponding to second quantum state in Joule is");
disp(E2);
printf("energy corresponding to second quantum state in eV is");
disp(E2eV);
printf("energy corresponding to fourth quantum state in Joule is");
disp(E4);
printf("energy corresponding to fourth quantum state in eV is");
disp(E4eV);

//answers given in the book are wrong

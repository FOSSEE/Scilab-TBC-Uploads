clc();
clear;
// To calculate the lowest energy of electron
n1=1;
n2=1;
n3=1;    //values in lowest energy
h=6.62*10^(-34);
m=9.1*10^-31;   //mass in kg
L=0.1;   //side in nm
L=L*10^-9;    //side in m
n=(n1^2)+(n2^2)+(n3^2);
E1=(n*h^2)/(8*m*L^2);    //energy in j
E1eV=E1/(1.6*10^-19);    //energy in eV
printf("lowest energy of electron in Joule is");
disp(E1);
printf("lowest energy of electron is %f eV",E1eV);

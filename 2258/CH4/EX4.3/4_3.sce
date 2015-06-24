clc();
clear;
// To calculate the change in magnetic moment
r=5.29*10^-11;     //radius of orbit in m
B=2;    //applied field in Tesla
e=1.602*10^-19;   //charge of electron in coulomb
m=9.108*10^-31;    //mass of electron in kg
mew=(e^2)*(r^2)*B/(4*m);
printf("magnetic moment in Am^2 is");
disp(mew);

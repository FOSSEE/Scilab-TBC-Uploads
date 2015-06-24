//clc();
clear;
//To calculate angle of acceptance
n1=1.563;         //refractive index of core
n2=1.498;         //refractive index of cladding
NA=sqrt(n1^2-n2^2);
theta0=asind(NA);
printf("angle of acceptance is %f degrees",theta0);

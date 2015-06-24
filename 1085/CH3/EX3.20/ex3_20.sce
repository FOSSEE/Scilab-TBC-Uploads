//Exam:3.20
clc;
clear;
close;
a=2.87*10^(-10);//lattice parameter for bcc iron
b=a*(3^(1/2))/2;//Magnitude of burgers vector
u=80*10^9;//shear modulus
E=(1/2)*u*b^2;//line energy of disslocation
disp(E,'line energy of disslocation(in J/m)=');
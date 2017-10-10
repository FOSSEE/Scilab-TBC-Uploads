//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_5.sce.

clc;
clear;
//from the given figure
q=1e-8;
OB=sqrt(5^2-4^2); //Distance between point O and B
cos_theta=3/5;
sin_theta=4/5;
r=5e-2;

epsilon_not=1/(36e9*%pi);
modulus_E=q/(4*%pi*epsilon_not*r^2);
E1=((modulus_E*cos_theta)-(modulus_E*sin_theta*%i));
E2=((-modulus_E*cos_theta)-(modulus_E*sin_theta*%i));
E=E1+E2;
disp(E,'The resultant field intensity in N/C is')




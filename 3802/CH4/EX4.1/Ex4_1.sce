//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_1.sce.

clc;
clear;
Q1=2e-9;  //Sphere 1 charges in coulomb 
Q2=-0.5e-9; //Sphere 2 charges in coulomb
r=4e-2;   //Distance between the two spheres in m
epsilon_not=1/(36e9*%pi);
printf("\n(a)")
F=-(Q1*Q2)/(4*%pi*epsilon_not*r^2);                   //Coulomb's law
printf("\n Force between two spheres when they are displaced 4cm apart=%1.4f*10^-5 N Attractive\n",F*1e5)

printf("\n(b)")
q=(Q1+Q2)/2;
F=(q^2)/(4*%pi*epsilon_not*r^2)
printf("\n Force between two spheres if they are brought into contact and separated by 4cm =%1.4f*10^-5 N repulsive\n",F*1e5)


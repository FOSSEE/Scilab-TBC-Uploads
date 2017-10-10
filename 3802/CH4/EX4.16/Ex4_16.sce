//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_16.sce.

clc;
clear;
q1=-2e-9;
q2=3e-9;
q3=2e-9;
q4=1e-9;
AB=1;              //Given square side as 1 metre
BC=1;
epsilon_not=8.854e-12;
AP=sqrt(AB^2+BC^2)/2;             //formula derived from the figure
Vp=(1/(4*%pi*epsilon_not*AP))*(q1+q2+q3+q4);
printf("\n Potential at the centre of the square=%2.2f volt",Vp)

//Answer vary due to roundoff error 

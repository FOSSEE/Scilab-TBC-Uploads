//Exa 1.2 
clc;
clear;
close;
//Given data :
format('v',5);
n1=1.5;//refractive index
n2=1.47;//refractive index
//Formula : sin(theta_c)=n2/n1;
theta_c=asind(n2/n1);//in Degree
disp(theta_c,"Critical Angle in Degree : ");
//Note : Answer in the book is wrong.
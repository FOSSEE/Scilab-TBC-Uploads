//Exa 2.2
clc;
clear;
close;
//Given data :
format('v',5);
n1=1.50;//refractive index
n2=1.47;//refractive index
//Formula : sin(theta_C)=n2/n1;
theta_c=asind((n2/n1));//in degree
disp(theta_c,"Critical Angle at core cladding interface in Degree : ");
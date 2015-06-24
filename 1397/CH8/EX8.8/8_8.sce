//clc();
clear;
//To calculate angle of refraction at the interface
n1=1.6;          //refractive index of medium
n2=1.55;         //refractive index of core
theta1=60;       //angle of incidence in degrees
A=sind(theta1);
disp(A);
theta2=asind(n1*A/n2);
printf("angle of refraction is %f degrees",theta2);

//answer in book is wrong

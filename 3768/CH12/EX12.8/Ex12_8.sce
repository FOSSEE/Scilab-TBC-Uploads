//Example number 12.8, Page number 265

clc;clear;
close;

//Variable declaration
n1=1.55;          //Core refractive index
n2=1.6;          //Cladding refractive index
theta1=60*%pi/180;     //incident angle(degrees)
//Calculation
x=n1*sin(theta1)/n2;
theta2=asin(x);    //refraction angle(radian)
theta2=theta2*180/%pi;    //refraction angle(degrees)
//Result
printf("refraction angle is %.2f degree",theta2)

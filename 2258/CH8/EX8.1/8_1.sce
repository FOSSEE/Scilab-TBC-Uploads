clc();
clear;
// To calculate the surface area to volume ratio
r=5;    //radius in m
SA=4*%pi*r^2;    //surface area of sphere in m^2
V=(4/3)*%pi*r^3;   //volume of sphere in m^3
R=SA/V;    //ratio
//surface area to volume ratio can also be given by 3/radius
printf("surface area to volume ratio of sphere is %f m-1",R);

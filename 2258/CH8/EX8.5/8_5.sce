clc();
clear;
// To calculate the height of cone
V=100;   //volume of cone in cubic inches
r=5;   //radius of cone in inches
r_m=r*0.0254;    //radius of cone in m
//volume V=(1/3)*%pi*(r^2)*h
//therefore h = (3*V)/(%pi*r^2)
h=(3*V)/(%pi*r^2);   //height in inches
R=3/r_m;
printf("height of the cone is %f inches",h);
printf("surface area to volume ratio is %f m-1",R);

//answer for the surface area to volume ratio given in the book is wrong

clc();
clear;
// To calculate the total surface area of cone
r=3;   //radius in m
h=4;   //height in m
SA=%pi*r*sqrt((r^2)+(h^2));
TSA=SA+(%pi*r^2);
printf("total surface area of cone is %f m^2",TSA);

//answer given in the book is wrong

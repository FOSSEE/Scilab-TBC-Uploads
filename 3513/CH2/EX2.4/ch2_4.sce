// To determine percentage of specimens
//page no 22
clear
clc;
sd=0.01;// standard deviation
x=0.567;
z=-2.16//The values of Z from normal tables
m=(z*sd)-x;
mprintf("Therefore the mean weight required is %.3f.",abs(m));

clc();
clear;
// To calculate the magnetic force and relative permeability
I=3000;    //magnetisation in amp/m
B=0.005;    //flux density in weber/m^2
mew0=4*%pi*10^-7;
H=(B/mew0)-I;
mew_r=(I/H)+1;
printf("magnetic force is %f amp/m",H);
printf("relative permeability is %f",mew_r);

//answer given in the book is wrong

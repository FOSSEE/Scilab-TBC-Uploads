//clc();
clear;
//To determine magnetic force and relative permeability of material
I=3000;         //magnetisation in amp/m
B=0.005;        //flux density in weber/m^2
mew0=(4*%pi*10^-7);        //mew0 in H/m
H=(B/mew0)-I;
mewr=(I/H)+1;
printf("magnetizing force is %f amp/m",H);
printf("relative permeability is %f",mewr);

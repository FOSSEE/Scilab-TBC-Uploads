clc();
clear;
// To calculate the relative permeability of ferromagnetic material
H=220;     //field in amp/m
M=3300;    //magnetisation in amp/m
chi=M/H;
mew_r=1+chi;
printf("relative permeability is %f",mew_r);


//Determine most economical value of diameter of single core cable
clear;
clc;
//soltion
//given
gmax=40;//kV/cm
V=50*sqrt(2);//kV
d=2*V/gmax;
printf("Diameter of conductor(d)= %.3f cm",d); 

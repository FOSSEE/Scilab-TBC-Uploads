// Exa 7.3
clc;
clear;
close;
// given data 
VH=4;//in Volt
VSat=13;//in Volt
// Assume R2=10 Kohm
R2=10;//in Kohm
disp("The hysteresis voltage for an schmitt trigger is given as : ");
disp("VH=R1*2*VSat/(R1+R2)");
R1=R2/((2*VSat/VH)-1);//in Kohm
disp("Component values are :");
disp(R1,"Value of R1 in Kohm is :");
disp(R2,"Value of R2 in Kohm is :");
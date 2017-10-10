// To determine percentage of specimens
//page no 23
clear
clc;
m=10;//years mean
sd=2;// years standard deviation
z=1.64;//The values of Z from normal tables
x=(z*sd)-m;
mprintf("Therefore the value of x =%.3f.years",abs(x));

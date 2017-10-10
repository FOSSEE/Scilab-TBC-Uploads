// To determine percentage of specimens
//page no 22
clear
clc;
m=10;// cm mean
sd=0.03;// standard deviation
x=10.075;
z=0.9938 //The values of Z from normal tables
z=z*100;
t=100-z;
mprintf("Therefore 100-99.38 = %.2f percent of items are falling greater than 10.075 cms.",t);
//(b)
z=1.04;
x=(z*sd)-m;
mprintf("\nBelow %.2f value of diameter will 15 percentage piston rings fall",x);

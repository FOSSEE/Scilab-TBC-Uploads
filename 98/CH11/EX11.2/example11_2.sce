//Chapter 11
//Example 11_2
//Page 274

clear;clc;

l=1000;
r=495*1e6;
r1=2.5/2;
p=4.5*1e12;


r2=r1*exp(2*%pi*r*l/p);

printf("Insulation thickness = %.2f cm \n\n", r2-r1);

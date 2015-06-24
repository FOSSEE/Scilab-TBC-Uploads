//Chapter 11
//Example 11_1
//Page 273

clear;clc;

r1=1/2;
l=2000;
p=5*1e12;
r2=0.5+0.4;

r=p*log(r2/r1)/(2*%pi*l);

printf("Internal resistance of the cable is = %.2f MW \n\n", r/1e6);

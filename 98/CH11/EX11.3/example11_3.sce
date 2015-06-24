//Chapter 11
//Example 11_3
//Page 274

clear;clc;

l=5000;
r=0.4*1e6;
r1=20/2;
r2=50/2;

p=2*%pi*r*l/log(r2/r1);

printf("Resistance of the insulating material = %.2f*10^9 ohm-m \n\n", p*1e-9);


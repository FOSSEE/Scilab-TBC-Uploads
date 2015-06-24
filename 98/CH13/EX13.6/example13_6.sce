//Chapter 13
//Example 13_6
//Page 317

clear;clc;

l=500;
i=0.4;
vd=10;
p=1.7*1e-6;

I=i*l;
r=vd/0.5/I/l;
area=p*100*2/r;

printf("Resistance per metre length of the distributor = %.2f*10^-3 ohm \n\n", r*1e3);
printf("Area of cross section of the distributor = %.1f cm^2 \n\n", area);
//Chapter 13
//Example 13_9
//Page 319

clear;clc;

x=200;
l=300;
i=0.75;
r=0.00018;
v=250;

vd=i*r*(l*x-x^2/2);
printf("Voltage drop = %.1f V \n\n", vd);
printf("Voltage at a distance %d m from supply end = %.1f V \n\n", x, v-vd);

p=i^2*r*l^3/3;
printf("Power loss in distributor = %.2f W \n\n", p);
